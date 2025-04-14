module main

import sdl
import sdl.ttf
import math

enum TurnState {
	start_next
	new_turn
	updating
	waiting
}

struct Game {
mut:
	sdl                     SdlContext
	should_close            bool
	zoom                    f32 = 30
	pos_x                   f32
	pos_y                   f32
	mouse_button_right_down bool
	mouse_button_left_down  bool
	map                     Map
	enemy_manager           EnemyManager
	turn_number             int
	turn_state              TurnState = .waiting
	mouse_pos_x             int
	mouse_pos_y             int
	mouse_index_x           int
	mouse_index_y           int
	opt                     InGameOpt
}

fn (mut g Game) loop(delta_time usize) {
	evt := sdl.Event{}
	for 0 < sdl.poll_event(&evt) {
		match evt.@type {
			.quit {
				g.should_close = true
			}
			.mousewheel {
				if evt.wheel.y > 0 || g.zoom > 1 {
					g.zoom += evt.wheel.y
				}
			}
			.mousemotion {
				if g.mouse_button_right_down {
					g.pos_x += evt.motion.xrel
					g.pos_y += evt.motion.yrel
				}
				g.mouse_pos_x = evt.motion.x
				g.mouse_pos_y = evt.motion.y
				if g.mouse_pos_x >= g.pos_x * g.zoom
					&& g.mouse_pos_x < (g.map.max_x * g.zoom) + (g.pos_x * g.zoom) {
					g.mouse_index_x = int((g.mouse_pos_x - (g.pos_x * g.zoom)) / g.zoom)
				}
				if g.mouse_pos_y >= g.pos_y * g.zoom
					&& g.mouse_pos_y < (g.map.max_y * g.zoom) + (g.pos_y * g.zoom) {
					g.mouse_index_y = int((g.mouse_pos_y - (g.pos_y * g.zoom)) / g.zoom)
				}
			}
			.mousebuttondown {
				match evt.button.button {
					u8(sdl.button_right) {
						g.mouse_button_right_down = true
					}
					u8(sdl.button_left) {
						g.mouse_button_left_down = true
					}
					else {}
				}
			}
			.mousebuttonup {
				match evt.button.button {
					u8(sdl.button_right) {
						g.mouse_button_right_down = false
					}
					u8(sdl.button_left) {
						g.mouse_button_left_down = false
					}
					else {}
				}
			}
			.keyup {
				match evt.key.keysym.sym {
					int(sdl.KeyCode.space) {
						if g.turn_state == .waiting {
							g.turn_state = .start_next
						}
					}
					else {}
				}
			}
			else {}
		}
	}
	if g.should_close {
		return
	}
	match g.turn_state {
		.start_next {
			g.turn_number += 1
			if g.turn_number % 10 == 0 {
				g.enemy_manager.spawn_enemies(g.turn_number)
			}
			g.enemy_manager.calculate_patfinding(g.map)
			g.map.reset_turn()
			g.turn_state = .new_turn
		}
		.new_turn {
			if g.enemy_manager.move(g.turn_state) && g.map.new_turn(mut g) {
				g.turn_state = .updating
			}
		}
		.updating {
			if g.enemy_manager.attack(mut g, g.turn_state, delta_time) && g.map.update(mut g, delta_time) {
				g.turn_state = .waiting
			}
		}
		.waiting {}
	}
	g.opt.update(mut g)
	sdl.set_render_draw_color(g.sdl.renderer, 255, 255, 255, 255)
	sdl.render_clear(g.sdl.renderer)
	for y, row in g.map.tiles {
		for x, tile in row {
			g.draw_square(x, y, tile.color)
			if tile is TileArcher {
				if tile.proj != none {
					g.draw_square_mini(tile.proj.x, tile.proj.y, tile.proj.color)
				}
			}
		}
	}
	for e in g.enemy_manager.enemies {
		g.draw_square(e.x, e.y, e.color)
	}
	for p in g.enemy_manager.projectiles {
		g.draw_square_mini(int(math.round(p.x)), int(math.round(p.y)), p.color)
	}
	g.highlight_cursor()
	g.opt.draw(mut g)
	g.show_nb_enemies()
	g.show_nb_turn()
	g.show_nb_projectiles()
	sdl.render_present(g.sdl.renderer)
}

fn (mut g Game) draw_square(x f32, y f32, color sdl.Color) {
	sdl.set_render_draw_color(g.sdl.renderer, color.r, color.g, color.b, color.a)
	rect := sdl.Rect{
		x: int(math.round((x * g.zoom) + (g.pos_x * g.zoom)))
		y: int(math.round((y * g.zoom) + (g.pos_y * g.zoom)))
		w: int(math.round(g.zoom))
		h: int(math.round(g.zoom))
	}
	sdl.render_fill_rect(g.sdl.renderer, rect)
	color_outline := sdl.Color{0, 0, 0, 255}
	sdl.set_render_draw_color(g.sdl.renderer, color_outline.r, color_outline.g, color_outline.b,
		color_outline.a)
	sdl.render_draw_rect(g.sdl.renderer, rect)
}

fn (mut g Game) draw_square_mini(x f32, y f32, color sdl.Color) {
	sdl.set_render_draw_color(g.sdl.renderer, color.r, color.g, color.b, color.a)
	rect := sdl.Rect{
		x: int(math.round((x * g.zoom) + (g.pos_x * g.zoom) + (g.zoom / 4)))
		y: int(math.round((y * g.zoom) + (g.pos_y * g.zoom) + (g.zoom / 4)))
		w: int(math.round(g.zoom / 2))
		h: int(math.round(g.zoom / 2))
	}
	sdl.render_fill_rect(g.sdl.renderer, rect)
	color_outline := sdl.Color{0, 0, 0, 255}
	sdl.set_render_draw_color(g.sdl.renderer, color_outline.r, color_outline.g, color_outline.b,
		color_outline.a)
	sdl.render_draw_rect(g.sdl.renderer, rect)
}

fn (mut g Game) show_nb_enemies() {
	// text
	col := sdl.Color{0, 0, 0, 255}
	surf := ttf.render_text_solid(g.sdl.font, 'Enemies: ${g.enemy_manager.enemies.len}'.str,
		col)
	text := sdl.create_texture_from_surface(g.sdl.renderer, surf)
	mut texw := 0
	mut texh := 0
	sdl.query_texture(text, sdl.null, sdl.null, &texw, &texh)
	rect := sdl.Rect{10, 10, texw, texh}
	// draw rect
	col_rect := sdl.Color{255, 255, 255, 50}
	sdl.set_render_draw_color(g.sdl.renderer, col_rect.r, col_rect.g, col_rect.b, col_rect.a)
	sdl.render_fill_rect(g.sdl.renderer, rect)
	// draw text
	sdl.render_copy(g.sdl.renderer, text, sdl.null, rect)
	sdl.destroy_texture(text)
	sdl.free_surface(surf)
}

fn (mut g Game) show_nb_turn() {
	// text
	col := sdl.Color{0, 0, 0, 255}
	surf := ttf.render_text_solid(g.sdl.font, 'Turn: ${g.turn_number}'.str, col)
	text := sdl.create_texture_from_surface(g.sdl.renderer, surf)
	mut texw := 0
	mut texh := 0
	sdl.query_texture(text, sdl.null, sdl.null, &texw, &texh)
	rect := sdl.Rect{10, 25, texw, texh}
	// draw rect
	col_rect := sdl.Color{255, 255, 255, 50}
	sdl.set_render_draw_color(g.sdl.renderer, col_rect.r, col_rect.g, col_rect.b, col_rect.a)
	sdl.render_fill_rect(g.sdl.renderer, rect)
	// draw text
	sdl.render_copy(g.sdl.renderer, text, sdl.null, rect)
	sdl.destroy_texture(text)
	sdl.free_surface(surf)
}

fn (mut g Game) show_nb_projectiles() {
	// text
	col := sdl.Color{0, 0, 0, 255}
	surf := ttf.render_text_solid(g.sdl.font, 'Enemies Projectile: ${g.enemy_manager.projectiles.len}'.str,
		col)
	text := sdl.create_texture_from_surface(g.sdl.renderer, surf)
	mut texw := 0
	mut texh := 0
	sdl.query_texture(text, sdl.null, sdl.null, &texw, &texh)
	rect := sdl.Rect{10, 40, texw, texh}
	// draw rect
	col_rect := sdl.Color{255, 255, 255, 50}
	sdl.set_render_draw_color(g.sdl.renderer, col_rect.r, col_rect.g, col_rect.b, col_rect.a)
	sdl.render_fill_rect(g.sdl.renderer, rect)
	// draw text
	sdl.render_copy(g.sdl.renderer, text, sdl.null, rect)
	sdl.destroy_texture(text)
	sdl.free_surface(surf)
}

fn (mut g Game) highlight_cursor() {
	color := sdl.Color{10, 10, 0, 255}
	g.draw_square(g.mouse_index_x, g.mouse_index_y, color)
}

fn (mut g Game) close() {
	g.sdl.close()
}
