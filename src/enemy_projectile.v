module main

import sdl
import datatypes

@[heap]
struct EnemyProjectile {
	color sdl.Color = sdl.Color{255, 255, 255, 50}
mut:
	x            int
	y            int
	q            datatypes.Queue[PosTmp]
	elapsed_time usize
	has_arived   bool
}

fn EnemyProjectile.new(x int, y int, map_repr [][]int) EnemyProjectile {
	map_max_x := map_repr[0].len
	map_max_y := map_repr.len
	// Left, Top, Right, Bot, Same Position
	choices := [PosTmp{-1, 0, 0}, PosTmp{0, -1, 0}, PosTmp{1, 0, 0},
		PosTmp{0, 1, 0}, PosTmp{0, 0, 0}]
	mut pseudo_pos := PosTmp{x, y, 0}
	mut q := datatypes.Queue[PosTmp]{}
	for map_repr[pseudo_pos.y][pseudo_pos.x] != 0 {
		mut index_pos := 4 // same position
		mut min_val := map_repr[pseudo_pos.y][pseudo_pos.x]
		for i, pos_offset in choices {
			new_pos := PosTmp{pseudo_pos.x + pos_offset.x, pseudo_pos.y + pos_offset.y, 0}
			if new_pos.x >= 0 && new_pos.y >= 0 && new_pos.x < map_max_x && new_pos.y < map_max_y
				&& map_repr[new_pos.y][new_pos.x] < min_val {
				min_val = map_repr[new_pos.y][new_pos.x]
				index_pos = i
			}
		}
		q.push(choices[index_pos])
		pseudo_pos.x += choices[index_pos].x
		pseudo_pos.y += choices[index_pos].y
	}
	return EnemyProjectile{
		x: x
		y: y
		q: q
	}
}

fn (mut p EnemyProjectile) move(delta_time usize) bool {
	if p.q.len() == 0 {
		p.has_arived = true
		return true
	}
	p.elapsed_time += delta_time
	if p.elapsed_time >= 100 {
		pos := p.q.pop() or { return true }
		p.x += pos.x
		p.y += pos.y
		p.elapsed_time -= 100
	}
	return false
}
