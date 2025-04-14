module main

import sdl

const tile_town_hall_color = sdl.Color{255, 0, 0, 255}

struct TileTownHall implements Tile {
	@type TileType  = .town_hall
	color sdl.Color = tile_town_hall_color
	enemy_focusable bool = true
}

fn (mut t TileTownHall) new_turn(mut g Game, x int, y int) {
}

fn (mut t TileTownHall) update(mut g Game, delta_time usize) {
}

fn (mut t TileTownHall) has_finished_update() bool {
	return true
}
