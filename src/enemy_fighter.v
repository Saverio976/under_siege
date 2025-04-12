module main

import sdl

struct EnemyFighter implements Enemy {
	@type EnemyType = .fighter
	dmg   int       = 2
	speed int       = 1
	range int       = 1
	color sdl.Color = sdl.Color{100, 0, 100, 50}
mut:
	hp int = 5
	x  int
	y  int
}
