module main

import rand
import rand.seed
import sdl
import math

fn main() {
	rand.seed(seed.time_seed_array(2))
	mut game := Game{}
	game.sdl.init()
	game.map.init()
	game.enemy_manager.init(game.map.max_x, game.map.max_y)
	game.opt.init()
	mut now := sdl.get_performance_counter()
	mut last := now
	mut delta_time := usize(0)
	time_per_frame := 1000.0 / 30.0
	for !game.should_close {
		start_ticks := sdl.get_performance_counter()
		last = now
		now = sdl.get_performance_counter()
		game.loop(delta_time)
		delta_time = usize(f64((now - last) * 1000) / f64(sdl.get_performance_frequency()))
		end_ticks := sdl.get_performance_counter()
		elapsed_time := f64(end_ticks - start_ticks) / f64(sdl.get_performance_frequency())
		sdl.delay(u32(math.floor(time_per_frame - elapsed_time)))
	}
	game.close()
}
