module main

import math
import sdl

struct EnemyProjectile {
	color sdl.Color = sdl.Color{255, 255, 255, 50}
mut:
	x f32
	y f32
	x_offset f32
	y_offset f32
	x_target int
	y_target int
}

fn EnemyProjectile.new(x int, y int, map_repr [][]int) EnemyProjectile {
	map_max_x := map_repr[0].len
	map_max_y := map_repr.len
	// Left, Top, Right, Bot, Same Position
	choices := [PosTmp{-1, 0, 0}, PosTmp{0, -1, 0}, PosTmp{1, 0, 0},
		PosTmp{0, 1, 0}, PosTmp{0, 0, 0}]
	mut pseudo_pos := PosTmp{x, y, 0}
	for map_repr[pseudo_pos.y][pseudo_pos.x] != 0 {
		mut index_pos := 4 // same position
		mut min_val := map_repr[pseudo_pos.y][pseudo_pos.x]
		for i, pos_offset in choices {
			new_pos := PosTmp{pseudo_pos.x + pos_offset.x, pseudo_pos.y + pos_offset.y, 0}
			if new_pos.x >= 0 && new_pos.y >= 0 && new_pos.x < map_max_x
				&& new_pos.y < map_max_y && map_repr[new_pos.y][new_pos.x] < min_val {
				min_val = map_repr[new_pos.y][new_pos.x]
				index_pos = i
			}
		}
		pseudo_pos.x += choices[index_pos].x
		pseudo_pos.y += choices[index_pos].y
	}
	return EnemyProjectile{
		x: x
		y: y
		x_offset: (pseudo_pos.x - f32(x)) * 0.005
		y_offset: (pseudo_pos.y - f32(y)) * 0.005
		x_target: pseudo_pos.x
		y_target: pseudo_pos.y
	}
}

fn (mut p EnemyProjectile) move(delta_time usize) bool {
	y_int := int(math.round(p.y))
	x_int := int(math.round(p.x))
	if y_int == p.y_target && x_int == p.x_target {
		return true
	}
	if math.abs(p.y - p.y_target) <= p.y_offset * 2 * delta_time {
		p.y = p.y_target
	} else {
		p.y += p.y_offset * delta_time
	}
	if math.abs(p.x - p.x_target) <= p.x_offset * 2 * delta_time {
		p.x = p.x_target
	} else {
		p.x += p.x_offset * delta_time
	}
	return false
}
