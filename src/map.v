module main

import math

struct Map {
mut:
	max_x int
	max_y int
	tiles [][]Tile
	y_idx int
}

fn (mut m Map) init() {
	m.max_x = 60
	m.max_y = 60
	m.tiles = [][]Tile{len: m.max_y, cap: m.max_y, init: []Tile{len: m.max_x, cap: m.max_x, init: Tile.new_random()}}
	for y, row in m.tiles {
		for x, _ in row {
			m.tiles[y][x] = Tile.new_random()
		}
	}
	m.tiles[m.max_y / 2][m.max_x / 2] = TileTownHall{}
}

fn (mut m Map) put_tile(x int, y int, @type TileType) {
	if x < 0 || y < 0 || x >= m.max_x || y >= m.max_y {
		return
	}
	m.tiles[y][x] = Tile.new(@type)
}

fn (mut m Map) upgrade_tile(x int, y int) {
	if x < 0 || y < 0 || x >= m.max_x || y >= m.max_y {
		return
	}
	// TODO: do something
	// m.tiles[y][x]
}

fn (mut m Map) delete_tile(x int, y int) {
	if x < 0 || y < 0 || x >= m.max_x || y >= m.max_y {
		return
	}
	m.tiles[y][x] = Tile.new(.empty)
}

fn (mut m Map) reset_turn() {
	m.y_idx = 0
}

fn (mut m Map) new_turn(mut g Game) bool {
	for y in m.y_idx .. math.min(m.y_idx + 10, m.tiles.len) {
		for x, mut tile in m.tiles[y] {
			tile.new_turn(mut g, x, y)
		}
		m.y_idx += 1
	}
	return m.y_idx >= m.tiles.len
}

fn (mut m Map) update(mut g Game, delta_time usize) bool {
	mut finished := true
	for mut row in m.tiles {
		for mut tile in row {
			if !tile.has_finished_update() {
				finished = false
				tile.update(mut g, delta_time)
			}
		}
	}
	return finished
}

fn (mut m Map) take_dmg(x int, y int, dmg int) {
	if m.tiles[y][x].enemy_focusable == true {
		m.tiles[y][x].hp -= dmg
		if m.tiles[y][x].hp <= 0 {
			m.tiles[y][x] = Tile.new(.empty)
		}
	}
}
