module main

import sdl

const tile_forest_color = sdl.Color{100, 255, 100, 255}

struct TileForest implements Tile {
	@type           TileType  = .forest
	color           sdl.Color = tile_forest_color
	enemy_focusable bool
mut:
	hp int
}

fn (mut t TileForest) new_turn(mut g Game, x int, y int) {
}

fn (mut t TileForest) update(mut g Game, delta_time usize) {
}

fn (mut t TileForest) has_finished_update() bool {
	return true
}
