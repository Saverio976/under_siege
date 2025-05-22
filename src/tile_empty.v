module main

import sdl

const tile_empty_color = sdl.Color{0, 255, 0, 255}

struct TileEmpty implements Tile {
	@type           TileType  = .empty
	color           sdl.Color = tile_empty_color
	enemy_focusable bool
mut:
	hp int
}

fn (mut t TileEmpty) new_turn(mut g Game, x int, y int) {
}

fn (mut t TileEmpty) update(mut g Game, delta_time usize) {
}

fn (mut t TileEmpty) has_finished_update() bool {
	return true
}
