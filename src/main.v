module main

import rand
import rand.seed
import sdl

fn main() {
	rand.seed(seed.time_seed_array(2))
	mut game := Game{}
	game.sdl.init()
	game.map.init()
	game.enemy_manager.init(game.map.max_x, game.map.max_y)
	game.enemy_manager.spawn_enemies(10)
	mut now := sdl.get_performance_counter()
	mut last := now
	mut delta_time := usize(0)
	for !game.should_close {
		last = now
		now = sdl.get_performance_counter()
		game.loop(delta_time)
		delta_time = usize(f64((now - last) * 1000) / f64(sdl.get_performance_frequency()))
	}
}
