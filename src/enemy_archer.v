module main

import sdl

struct EnemyArcher implements Enemy {
	@type EnemyType = .archer
	dmg   int       = 1
	speed int       = 2
	range int       = 3
	color sdl.Color = sdl.Color{0, 100, 100, 50}
mut:
	hp int = 3
	x  int
	y  int
}
