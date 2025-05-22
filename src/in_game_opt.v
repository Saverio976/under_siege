module main

import sdl
import sdl.ttf
import math

const upgrade_color = sdl.Color{0, 255, 0, 255}
const delete_color = sdl.Color{255, 0, 0, 255}

struct BuildingGUI {
	color sdl.Color
	@type TileType
	rect  sdl.Rect
}

struct BuildingsConstructGUI {
mut:
	x         f32
	y         f32
	x_idx     int
	y_idx     int
	buildings []BuildingGUI
}

fn (mut b BuildingsConstructGUI) init() {
	b.buildings << BuildingGUI{
		color: tile_archer_color
		@type: .archer
		rect:  sdl.Rect{10, 10, 15, 15}
	}
	b.buildings << BuildingGUI{
		color: tile_road_color
		@type: .road
		rect:  sdl.Rect{30, 10, 15, 15}
	}
}

fn (mut b BuildingsConstructGUI) update(mut g Game) {
}

fn (mut b BuildingsConstructGUI) draw(mut g Game) {
	mut x_top_left := math.maxof[f32]()
	mut y_top_left := math.maxof[f32]()
	mut x_bot_right := math.minof[f32]()
	mut y_bot_right := math.minof[f32]()
	for build in b.buildings {
		if build.rect.x < x_top_left {
			x_top_left = build.rect.x
		}
		if build.rect.y < y_top_left {
			y_top_left = build.rect.y
		}
		if build.rect.x + build.rect.w > x_bot_right {
			x_bot_right = build.rect.x + build.rect.w
		}
		if build.rect.y + build.rect.h > y_bot_right {
			y_bot_right = build.rect.y + build.rect.h
		}
	}
	color_outline := sdl.Color{255, 255, 255, 255}
	sdl.set_render_draw_color(g.sdl.renderer, color_outline.r, color_outline.g, color_outline.b,
		color_outline.a)
	sdl.render_fill_rect(g.sdl.renderer, sdl.Rect{
		x: int(x_top_left + b.x - 5)
		y: int(y_top_left + b.y - 5)
		w: int(x_bot_right - x_top_left + 10)
		h: int(y_bot_right - y_top_left + 10)
	})
	for build in b.buildings {
		sdl.set_render_draw_color(g.sdl.renderer, build.color.r, build.color.g, build.color.b,
			build.color.a)
		sdl.render_fill_rect(g.sdl.renderer, sdl.Rect{
			x: int(build.rect.x + b.x)
			y: int(build.rect.y + b.y)
			w: build.rect.w
			h: build.rect.h
		})
	}
	col := sdl.Color{0, 0, 0, 255}
	surf := ttf.render_text_solid(g.sdl.font, 'Building Menu'.str, col)
	text := sdl.create_texture_from_surface(g.sdl.renderer, surf)
	mut texw := 0
	mut texh := 0
	sdl.query_texture(text, sdl.null, sdl.null, &texw, &texh)
	rect := sdl.Rect{g.sdl.w - texw - 10, 10, texw, texh}
	// draw rect
	col_rect := sdl.Color{255, 255, 255, 50}
	sdl.set_render_draw_color(g.sdl.renderer, col_rect.r, col_rect.g, col_rect.b, col_rect.a)
	sdl.render_fill_rect(g.sdl.renderer, rect)
	// draw text
	sdl.render_copy(g.sdl.renderer, text, sdl.null, rect)
	sdl.destroy_texture(text)
	sdl.free_surface(surf)
}

fn (mut b BuildingsConstructGUI) clicked(mut g Game, mut o InGameOpt) {
	for build in b.buildings {
		if sdl.point_in_rect(sdl.Point{g.mouse_pos_x, g.mouse_pos_y}, sdl.Rect{int(build.rect.x +
			b.x), int(build.rect.y + b.y), build.rect.w, build.rect.h})
		{
			g.map.put_tile(b.x_idx, b.y_idx, build.@type)
			break
		}
	}
	o.state = .nothing
}

enum BuildingOptType {
	upgrade
	delete
}

struct BuildingOptGUI {
	color sdl.Color
	@type BuildingOptType
	rect  sdl.Rect
}

struct BuildingOptsGUI {
mut:
	x     f32
	y     f32
	x_idx int
	y_idx int
	opts  []BuildingOptGUI
}

fn (mut b BuildingOptsGUI) init() {
	b.opts << BuildingOptGUI{
		color: upgrade_color
		@type: .upgrade
		rect:  sdl.Rect{10, 10, 15, 15}
	}
	b.opts << BuildingOptGUI{
		color: delete_color
		@type: .delete
		rect:  sdl.Rect{30, 10, 15, 15}
	}
}

fn (mut b BuildingOptsGUI) update(mut g Game) {
}

fn (mut b BuildingOptsGUI) draw(mut g Game) {
	mut x_top_left := math.maxof[f32]()
	mut y_top_left := math.maxof[f32]()
	mut x_bot_right := math.minof[f32]()
	mut y_bot_right := math.minof[f32]()
	for build in b.opts {
		if build.rect.x < x_top_left {
			x_top_left = build.rect.x
		}
		if build.rect.y < y_top_left {
			y_top_left = build.rect.y
		}
		if build.rect.x + build.rect.w > x_bot_right {
			x_bot_right = build.rect.x + build.rect.w
		}
		if build.rect.y + build.rect.h > y_bot_right {
			y_bot_right = build.rect.y + build.rect.h
		}
	}
	color_outline := sdl.Color{255, 255, 255, 255}
	sdl.set_render_draw_color(g.sdl.renderer, color_outline.r, color_outline.g, color_outline.b,
		color_outline.a)
	sdl.render_fill_rect(g.sdl.renderer, sdl.Rect{
		x: int(x_top_left + b.x - 5)
		y: int(y_top_left + b.y - 5)
		w: int(x_bot_right - x_top_left + 10)
		h: int(y_bot_right - y_top_left + 10)
	})
	for build in b.opts {
		sdl.set_render_draw_color(g.sdl.renderer, build.color.r, build.color.g, build.color.b,
			build.color.a)
		sdl.render_fill_rect(g.sdl.renderer, sdl.Rect{
			x: int(build.rect.x + b.x)
			y: int(build.rect.y + b.y)
			w: build.rect.w
			h: build.rect.h
		})
	}
	col := sdl.Color{0, 0, 0, 255}
	surf := ttf.render_text_solid(g.sdl.font, 'Building Selected Menu'.str, col)
	text := sdl.create_texture_from_surface(g.sdl.renderer, surf)
	mut texw := 0
	mut texh := 0
	sdl.query_texture(text, sdl.null, sdl.null, &texw, &texh)
	rect := sdl.Rect{g.sdl.w - texw - 10, 10, texw, texh}
	// draw rect
	col_rect := sdl.Color{255, 255, 255, 50}
	sdl.set_render_draw_color(g.sdl.renderer, col_rect.r, col_rect.g, col_rect.b, col_rect.a)
	sdl.render_fill_rect(g.sdl.renderer, rect)
	// draw text
	sdl.render_copy(g.sdl.renderer, text, sdl.null, rect)
	sdl.destroy_texture(text)
	sdl.free_surface(surf)
}

fn (mut b BuildingOptsGUI) clicked(mut g Game, mut o InGameOpt) {
	for build in b.opts {
		if sdl.point_in_rect(sdl.Point{g.mouse_pos_x, g.mouse_pos_y}, sdl.Rect{int(build.rect.x +
			b.x), int(build.rect.y + b.y), build.rect.w, build.rect.h})
		{
			match build.@type {
				.upgrade { g.map.upgrade_tile(b.x_idx, b.y_idx) }
				.delete { g.map.delete_tile(b.x_idx, b.y_idx) }
			}
			break
		}
	}
	o.state = .nothing
}

enum InGameOptType {
	nothing
	showing_building_construct
	showing_building_opt
}

struct InGameOpt {
mut:
	last_mouse_button_left_down bool
	state                       InGameOptType = .nothing
	buildings_construct         BuildingsConstructGUI
	building_opt                BuildingOptsGUI
}

fn (mut o InGameOpt) init() {
	o.buildings_construct.init()
	o.building_opt.init()
}

fn (mut o InGameOpt) update(mut g Game) {
	if !g.mouse_button_left_down && o.last_mouse_button_left_down {
		o.clicked(mut g)
	}
	o.last_mouse_button_left_down = g.mouse_button_left_down
	match o.state {
		.showing_building_construct { o.buildings_construct.update(mut g) }
		.showing_building_opt { o.building_opt.update(mut g) }
		else {}
	}
}

fn (mut o InGameOpt) draw(mut g Game) {
	match o.state {
		.showing_building_construct { o.buildings_construct.draw(mut g) }
		.showing_building_opt { o.building_opt.draw(mut g) }
		else {}
	}
}

fn (mut o InGameOpt) clicked(mut g Game) {
	match o.state {
		.nothing {
			match g.map.tiles[g.mouse_index_y][g.mouse_index_x].@type {
				.empty {
					o.buildings_construct.x = g.mouse_pos_x
					o.buildings_construct.y = g.mouse_pos_y
					o.buildings_construct.x_idx = g.mouse_index_x
					o.buildings_construct.y_idx = g.mouse_index_y
					o.state = .showing_building_construct
				}
				.forest {}
				else {
					o.building_opt.x = g.mouse_pos_x
					o.building_opt.y = g.mouse_pos_y
					o.building_opt.x_idx = g.mouse_index_x
					o.building_opt.y_idx = g.mouse_index_y
					o.state = .showing_building_opt
				}
			}
		}
		.showing_building_construct {
			o.buildings_construct.clicked(mut g, mut o)
		}
		.showing_building_opt {
			o.building_opt.clicked(mut g, mut o)
		}
	}
}

fn (mut o InGameOpt) show_building() {
}
