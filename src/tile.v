module main

import rand
import sdl

enum TileType {
	empty
	town_hall
	archer
	forest
	road
}

interface Tile {
	@type TileType
	color sdl.Color
	enemy_focusable bool
mut:
	hp int
	new_turn(mut g Game, x int, y int)
	update(mut g Game, delta_time usize)
	has_finished_update() bool
}

fn Tile.new_random() Tile {
	rand_int := rand.int_in_range(0, 2) or { 1 }
	if rand_int == 0 {
		return TileEmpty{}
	} else if rand_int == 1 {
		return TileForest{}
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
	} else if @type == .forest {
		return TileForest{}
	} else if @type == .road {
		return TileRoad{}
	} else {
		return TileEmpty{}
	}
}
