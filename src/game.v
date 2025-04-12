module main

import sdl
import math

enum TurnState{
	start_next
	new_turn
	updating
	waiting
}

struct Game {
mut:
	sdl                     SdlContext
	should_close            bool
	zoom                    int = 30
	pos_x                   int
	pos_y                   int
	mouse_button_right_down bool
	map                     Map
	enemy_manager           EnemyManager
	turn_number             int
	turn_state TurnState = .waiting
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
			}
			.mousebuttondown {
				if evt.button.button == sdl.button_right {
					g.mouse_button_right_down = true
				}
			}
			.mousebuttonup {
				if evt.button.button == sdl.button_right {
					g.mouse_button_right_down = false
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
			g.turn_state = .new_turn
		}
		.new_turn {
			if g.enemy_manager.move(g.turn_state) {
				g.turn_state = .updating
			}
		}
		.updating {
			if g.enemy_manager.attack(g.turn_state, delta_time) {
				g.turn_state = .waiting
			}
		}
		.waiting {}
	}
	sdl.set_render_draw_color(g.sdl.renderer, 255, 255, 255, 255)
	sdl.render_clear(g.sdl.renderer)
	for y, row in g.map.tiles {
		for x, tile in row {
			g.draw_square(x, y, tile.color)
		}
	}
	for e in g.enemy_manager.enemies {
		g.draw_square(e.x, e.y, e.color)
	}
	for p in g.enemy_manager.projectiles {
		g.draw_square_mini(int(math.round(p.x)), int(math.round(p.y)), p.color)
	}
	sdl.render_present(g.sdl.renderer)
}

fn (mut g Game) draw_square(x int, y int, color sdl.Color) {
	square_size_x := g.zoom
	square_size_y := g.zoom
	sdl.set_render_draw_color(g.sdl.renderer, color.r, color.g, color.b, color.a)
	rect := sdl.Rect{
		x: (x * square_size_x) + (g.pos_x * square_size_x)
		y: (y * square_size_y) + (g.pos_y * square_size_y)
		w: square_size_x
		h: square_size_y
	}
	sdl.render_fill_rect(g.sdl.renderer, rect)
	color_outline := sdl.Color{0, 0, 0, 255}
	sdl.set_render_draw_color(g.sdl.renderer, color_outline.r, color_outline.g, color_outline.b,
		color_outline.a)
	sdl.render_draw_rect(g.sdl.renderer, rect)
}

fn (mut g Game) draw_square_mini(x int, y int, color sdl.Color) {
	square_size_x := g.zoom
	square_size_y := g.zoom
	sdl.set_render_draw_color(g.sdl.renderer, color.r, color.g, color.b, color.a)
	rect := sdl.Rect{
		x: (x * square_size_x) + (g.pos_x * square_size_x) + (square_size_x / 4)
		y: (y * square_size_y) + (g.pos_y * square_size_y) + (square_size_y / 4)
		w: square_size_x / 2
		h: square_size_y / 2
	}
	sdl.render_fill_rect(g.sdl.renderer, rect)
	color_outline := sdl.Color{0, 0, 0, 255}
	sdl.set_render_draw_color(g.sdl.renderer, color_outline.r, color_outline.g, color_outline.b,
		color_outline.a)
	sdl.render_draw_rect(g.sdl.renderer, rect)
}
