module main

import sdl

const tile_town_hall_color = sdl.Color{255, 0, 0, 255}

struct TileTownHall implements Tile {
	@type TileType  = .town_hall
	color sdl.Color = tile_town_hall_color
}
