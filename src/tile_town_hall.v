module main

import sdl

struct TileTownHall implements Tile {
	@type TileType  = .town_hall
	color sdl.Color = sdl.Color{255, 0, 0, 255}
}
