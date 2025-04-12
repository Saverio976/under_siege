module main

import sdl

enum EnemyType {
	fighter
	archer
}

interface Enemy {
	@type EnemyType
	dmg   int
	speed int
	range int
	color sdl.Color
mut:
	hp int
	x  int
	y  int
}

fn Enemy.new(@type EnemyType, x int, y int) Enemy {
	if @type == .fighter {
		mut e := EnemyFighter{}
		e.x = x
		e.y = y
		return e
	} else if @type == .archer {
		mut e := EnemyArcher{}
		e.x = x
		e.y = y
		return e
	} else {
		panic('no handled')
	}
}
