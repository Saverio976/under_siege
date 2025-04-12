module main

struct Map {
mut:
	max_x int
	max_y int
	tiles [][]Tile
}

fn (mut m Map) init() {
	m.max_x = 30
	m.max_y = 30
	m.tiles = [][]Tile{len: m.max_y, cap: m.max_y, init: []Tile{len: m.max_x, cap: m.max_x, init: Tile.new_random()}}
	for y, row in m.tiles {
		for x, _ in row {
			m.tiles[y][x] = Tile.new_random()
		}
	}
	m.tiles[m.max_y / 2][m.max_x / 2] = TileTownHall{}
}
