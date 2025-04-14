module main

import rand
import datatypes
import math

struct PosTmp {
mut:
	x int
	y int
	v int
}

struct EnemyManager {
mut:
	map_max_x   int
	map_max_y   int
	enemies     []Enemy
	map_repr    [][]int
	projectiles []EnemyProjectile
	index       int
	index_proj  int
	last_status TurnState = .waiting
}

fn (mut m EnemyManager) init(map_max_x int, map_max_y int) {
	m.map_max_x = map_max_x
	m.map_max_y = map_max_y
	m.map_repr = [][]int{len: m.map_max_y, cap: m.map_max_y, init: []int{len: m.map_max_x, cap: m.map_max_x, init: math.maxof[int]()}}
	m.projectiles = []EnemyProjectile{cap: 1000}
	m.enemies = []Enemy{cap: 1000}
}

fn (mut m EnemyManager) move(status TurnState) bool {
	if status != m.last_status {
		m.index = 0
		m.last_status = status
	}
	// Left, Top, Right, Bot, Same Position
	choices := [PosTmp{-1, 0, 0}, PosTmp{0, -1, 0}, PosTmp{1, 0, 0},
		PosTmp{0, 1, 0}, PosTmp{0, 0, 0}]
	for _ in m.index .. math.min(m.index + 50, m.enemies.len) {
		mut e := &m.enemies[m.index]
		if m.map_repr[e.y][e.x] <= e.range {
			m.index += 1
			continue
		}
		for _ in 0 .. e.speed {
			mut index_pos := 4 // same position
			mut min_val := m.map_repr[e.y][e.x]
			for i, pos_offset in choices {
				new_pos := PosTmp{e.x + pos_offset.x, e.y + pos_offset.y, 0}
				if new_pos.x >= 0 && new_pos.y >= 0 && new_pos.x < m.map_max_x
					&& new_pos.y < m.map_max_y && m.map_repr[new_pos.y][new_pos.x] < min_val {
					min_val = m.map_repr[new_pos.y][new_pos.x]
					index_pos = i
				}
			}
			e.x += choices[index_pos].x
			e.y += choices[index_pos].y
		}
		m.index += 1
	}
	return m.index >= m.enemies.len
}

fn (mut m EnemyManager) attack(mut g Game, status TurnState, delta_time usize) bool {
	if status != m.last_status {
		m.index = 0
		m.index_proj = 0
		m.last_status = status
	}
	for _ in m.index .. math.min(m.index + 50, m.enemies.len) {
		mut e := &m.enemies[m.index]
		if m.map_repr[e.y][e.x] > e.range {
			m.index += 1
			continue
		}
		m.projectiles << EnemyProjectile.new(e.x, e.y, e.dmg, m.map_repr)
		m.index += 1
	}
	if m.index_proj >= m.projectiles.len {
		m.index_proj = 0
	}
	countor := m.index_proj + 50
	for m.index_proj < math.min(countor, m.projectiles.len) {
		mut to_remove := -1
		for m.index_proj < math.min(countor, m.projectiles.len) {
			if m.projectiles[m.index_proj].move(delta_time) {
				to_remove = m.index_proj
				g.map.take_dmg(m.projectiles[m.index_proj].x, m.projectiles[m.index_proj].y, m.projectiles[m.index_proj].dmg)
				break
			}
			m.index_proj += 1
		}
		if to_remove != -1 {
			m.projectiles.delete(to_remove)
		}
	}
	return m.index >= m.enemies.len && m.projectiles.len == 0
}

fn (mut m EnemyManager) spawn_enemies(turn_number int) {
	enemy_type := rand.int_in_range(0, 3) or { 0 }
	enemy_number := rand.int_in_range(0, turn_number + 1) or { 0 }
	m.p_spawn_enemies_one_side(enemy_type, enemy_number)
}

fn (mut m EnemyManager) p_spawn_enemy(enemy_type int, x int, y int) {
	match enemy_type {
		0 {
			m.enemies << Enemy.new(.fighter, x, y)
		}
		1 {
			m.enemies << Enemy.new(.archer, x, y)
		}
		else {
			v := rand.int_in_range(0, 2) or { 0 }
			m.p_spawn_enemy(v, x, y)
		}
	}
}

fn (mut m EnemyManager) p_spawn_enemies_one_side(enemy_type int, enemy_number int) {
	cols := rand.int_in_range(0, 2) or { 0 }
	rows := rand.int_in_range(0, 2) or { 0 }
	for _ in 0 .. enemy_number {
		mut xx := 0
		mut yy := 0
		if cols == 0 && rows == 0 {
			// Top
			xx = rand.int_in_range(1, m.map_max_x - 1) or { 1 }
			yy = rand.int_in_range(1, 3) or { 1 }
		} else if cols == 1 && rows == 0 {
			// Left
			xx = rand.int_in_range(1, 3) or { 1 }
			yy = rand.int_in_range(1, m.map_max_y - 1) or { 1 }
		} else if cols == 0 && rows == 1 {
			// Right
			xx = rand.int_in_range(m.map_max_x - 4, m.map_max_x - 1) or { 1 }
			yy = rand.int_in_range(1, m.map_max_y - 1) or { 1 }
		} else if cols == 1 && rows == 1 {
			// Bottom
			xx = rand.int_in_range(1, m.map_max_x - 1) or { 1 }
			yy = rand.int_in_range(m.map_max_y - 4, m.map_max_y - 1) or { 1 }
		}

		m.p_spawn_enemy(enemy_type, xx, yy)
	}
}

fn (mut m EnemyManager) calculate_patfinding(mmap &Map) {
	for x in 0 .. m.map_max_x {
		for y in 0 .. m.map_max_y {
			m.map_repr[y][x] = math.maxof[int]()
		}
	}
	mut q := datatypes.Queue[PosTmp]{}
	for y, row in mmap.tiles {
		for x, tile in row {
			if tile.enemy_focusable {
				q.push(PosTmp{x, y, 0})
				m.map_repr[y][x] = 0
			}
		}
	}
	for q.len() != 0 {
		pos := q.pop() or { break }
		if pos.x > 0 {
			// Left
			val := m.map_repr[pos.y][pos.x - 1]
			if val > pos.v + 1 || (val == pos.v + 1 && rand.int_in_range(0, 2) or { 0 } == 1) {
				q.push(PosTmp{pos.x - 1, pos.y, pos.v + 1})
				m.map_repr[pos.y][pos.x - 1] = pos.v + 1
			}
		}
		if pos.y > 0 {
			// Top
			val := m.map_repr[pos.y - 1][pos.x]
			if val > pos.v + 1 || (val == pos.v + 1 && rand.int_in_range(0, 2) or { 0 } == 1) {
				q.push(PosTmp{pos.x, pos.y - 1, pos.v + 1})
				m.map_repr[pos.y - 1][pos.x] = pos.v + 1
			}
		}
		if pos.x < m.map_max_x - 1 {
			// Right
			val := m.map_repr[pos.y][pos.x + 1]
			if val > pos.v + 1 || (val == pos.v + 1 && rand.int_in_range(0, 2) or { 0 } == 1) {
				q.push(PosTmp{pos.x + 1, pos.y, pos.v + 1})
				m.map_repr[pos.y][pos.x + 1] = pos.v + 1
			}
		}
		if pos.y < m.map_max_y - 1 {
			// Bot
			val := m.map_repr[pos.y + 1][pos.x]
			if val > pos.v + 1 || (val == pos.v + 1 && rand.int_in_range(0, 2) or { 0 } == 1) {
				q.push(PosTmp{pos.x, pos.y + 1, pos.v + 1})
				m.map_repr[pos.y + 1][pos.x] = pos.v + 1
			}
		}
	}
}

fn (mut m EnemyManager) take_dmg(x int, y int, dmg int) {
	mut index := 0
	for index < m.enemies.len {
		mut to_remove := -1
		for _ in index .. m.enemies.len {
			mut e := &m.enemies[index]
			if e.x == x && e.y == y {
				e.hp -= dmg
				if e.hp <= 0 {
					to_remove = index
					break
				}
			}
			index += 1
		}
		if to_remove != -1 {
			m.enemies.delete(to_remove)
		}
	}
}
