module main

import sdl
import math

struct BuildingGUI {
	color sdl.Color
	@type TileType
	rect  sdl.Rect
}

struct BuildingsGUI {
mut:
	x         f32
	y         f32
	x_idx     int
	y_idx     int
	buildings []BuildingGUI
}

fn (mut b BuildingsGUI) init() {
	b.buildings << BuildingGUI{
		color: tile_empty_color
		@type: .empty
		rect:  sdl.Rect{10, 10, 15, 15}
	}
	b.buildings << BuildingGUI{
		color: tile_town_hall_color
		@type: .town_hall
		rect:  sdl.Rect{30, 10, 15, 15}
	}
	b.buildings << BuildingGUI{
		color: tile_archer_color
		@type: .archer
		rect:  sdl.Rect{50, 10, 15, 15}
	}
}

fn (mut b BuildingsGUI) update(mut g Game) {
}

fn (mut b BuildingsGUI) draw(mut g Game) {
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
}

fn (mut b BuildingsGUI) clicked(mut g Game, mut o InGameOpt) {
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

enum InGameOptType {
	nothing
	showing_building
}

struct InGameOpt {
mut:
	last_mouse_button_left_down bool
	state                       InGameOptType = .nothing
	buildings                   BuildingsGUI
}

fn (mut o InGameOpt) init() {
	o.buildings.init()
}

fn (mut o InGameOpt) update(mut g Game) {
	if !g.mouse_button_left_down && o.last_mouse_button_left_down {
		o.clicked(mut g)
	}
	o.last_mouse_button_left_down = g.mouse_button_left_down
	match o.state {
		.showing_building { o.buildings.update(mut g) }
		else {}
	}
}

fn (mut o InGameOpt) draw(mut g Game) {
	match o.state {
		.showing_building { o.buildings.draw(mut g) }
		else {}
	}
}

fn (mut o InGameOpt) clicked(mut g Game) {
	match o.state {
		.nothing {
			if g.map.tiles[g.mouse_index_y][g.mouse_index_x].@type == .empty {
				o.buildings.x = g.mouse_pos_x
				o.buildings.y = g.mouse_pos_y
				o.buildings.x_idx = g.mouse_index_x
				o.buildings.y_idx = g.mouse_index_y
				o.state = .showing_building
				// TODO: show building
			} else {
				// TODO: show opt for building
			}
		}
		.showing_building {
			o.buildings.clicked(mut g, mut o)
		}
	}
}

fn (mut o InGameOpt) show_building() {
}
