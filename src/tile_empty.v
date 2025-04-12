module main

import sdl

struct TileEmpty implements Tile {
	@type TileType  = .empty
	color sdl.Color = sdl.Color{0, 255, 0, 255}
}
