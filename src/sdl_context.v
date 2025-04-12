module main

import sdl

struct SdlContext {
mut:
	w        int
	h        int
	window   &sdl.Window   = sdl.null
	renderer &sdl.Renderer = sdl.null
}

fn (mut c SdlContext) init() {
	c.w = 800
	c.h = 600
	sdl.init(sdl.init_video)
	C.atexit(sdl.quit)
	sdl.create_window_and_renderer(c.w, c.h, 0, &c.window, &c.renderer)
	sdl.set_window_title(c.window, 'Under Siege'.str)
}
