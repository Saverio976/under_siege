module main

import rand
import sdl

enum TileType {
	empty
	town_hall
	archer
}

interface Tile {
	@type TileType
	color sdl.Color
mut:
	new_turn(mut g Game, x int, y int)
	update(mut g Game, delta_time usize)
	has_finished_update() bool
}

fn Tile.new_random() &Tile {
	rand_int := rand.int_in_range(0, 2) or { 0 }
	if rand_int == 0 {
		return TileEmpty{}
	} else {
		return TileEmpty{}
	}
}

fn Tile.new(@type TileType) Tile {
	if @type == .empty {
		return TileEmpty{}
	} else if @type == .town_hall {
		return TileTownHall{}
	} else if @type == .archer {
		return TileArcher{}
	} else {
		return TileEmpty{}
	}
}
