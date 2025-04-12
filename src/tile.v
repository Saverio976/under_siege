module main

import rand
import sdl

enum TileType {
	empty
	town_hall
}

interface Tile {
	@type TileType
	color sdl.Color
}

fn Tile.new_random() &Tile {
	rand_int := rand.int_in_range(0, 2) or { 0 }
	if rand_int == 0 {
		return TileEmpty{}
	} else {
		return TileEmpty{}
	}
}
