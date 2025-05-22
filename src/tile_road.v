module main

import sdl

const tile_road_color = sdl.Color{100, 200, 255, 255}

struct TileRoad implements Tile {
	@type           TileType  = .road
	color           sdl.Color = tile_road_color
	enemy_focusable bool      = true
mut:
	hp int = 5
}

fn (mut t TileRoad) new_turn(mut g Game, x int, y int) {
}

fn (mut t TileRoad) update(mut g Game, delta_time usize) {
}

fn (mut t TileRoad) has_finished_update() bool {
	return true
}
