module main

import sdl
import math.vec
import math

const tile_archer_color = sdl.Color{255, 100, 0, 255}

struct ArcherProjectile {
	color sdl.Color = sdl.Color{255, 255, 50, 50}
mut:
	x            int
	y            int
	x_target     int
	y_target     int
	elapsed_time usize
	arrived      bool
	dmg          int
}

fn ArcherProjectile.new(x int, y int, x_target int, y_target int, dmg int) ArcherProjectile {
	return ArcherProjectile{
		x:        x
		y:        y
		x_target: x_target
		y_target: y_target
		dmg:      dmg
	}
}

fn (mut p ArcherProjectile) move(delta_time usize) bool {
	if p.arrived || (p.x_target == p.x && p.y_target == p.y) {
		p.arrived = true
		return true
	}
	p.elapsed_time += delta_time
	if p.elapsed_time >= 100 {
		if math.abs(p.x_target - p.x) > math.abs(p.y_target - p.y) {
			p.x += if p.x_target - p.x < 0 { -1 } else { 1 }
		} else {
			p.y += if p.y_target - p.y < 0 { -1 } else { 1 }
		}
		p.elapsed_time -= 100
	}
	return false
}

struct TileArcher implements Tile {
	@type TileType  = .archer
	color sdl.Color = tile_archer_color
	enemy_focusable bool = true
mut:
	range int = 3
	dmg   int = 2
	proj  ?ArcherProjectile
}

fn (mut t TileArcher) new_turn(mut g Game, x int, y int) {
	for e in g.enemy_manager.enemies {
		if vec.Vec2{x, y}.distance(vec.Vec2{e.x, e.y}) <= t.range {
			t.proj = ArcherProjectile.new(x, y, e.x, e.y, t.dmg)
			println("shoot")
			break
		}
	}
}

fn (mut t TileArcher) update(mut g Game, delta_time usize) {
	if t.proj != none {
		if t.proj.move(delta_time) {
			g.enemy_manager.take_dmg(t.proj.x_target, t.proj.y_target, t.proj.dmg)
			t.proj = none
		}
	}
}

fn (mut t TileArcher) has_finished_update() bool {
	if t.proj != none {
		return false
	}
	return true
}
