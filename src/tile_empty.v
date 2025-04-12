module main

import sdl

const tile_empty_color = sdl.Color{0, 255, 0, 255}

struct TileEmpty implements Tile {
	@type TileType  = .empty
	color sdl.Color = tile_empty_color
}
