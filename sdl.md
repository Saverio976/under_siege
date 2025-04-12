module sdl

const windowpos_centered = C.SDL_WINDOWPOS_CENTERED
const windowpos_centered_mask = C.SDL_WINDOWPOS_CENTERED_MASK // 0x2FFF0000u
const windowpos_undefined = C.SDL_WINDOWPOS_UNDEFINED //
const windowpos_undefined_mask = C.SDL_WINDOWPOS_UNDEFINED_MASK //   0x1FFF0000u
const mouse_touch_id = C.SDL_MOUSE_TOUCHID // ((Sint64)-1)
const touch_mouseid = C.SDL_TOUCH_MOUSEID // ((Uint32)-1)
const window_lacks_shape = C.SDL_WINDOW_LACKS_SHAPE // -3
const invalid_shape_argument = C.SDL_INVALID_SHAPE_ARGUMENT // -2
const nonshapeable_window = C.SDL_NONSHAPEABLE_WINDOW // -1
const init_everything = u32(C.SDL_INIT_EVERYTHING) // ( SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | INIT_GAMECONTROLLER | SDL_INIT_SENSOR )
const init_noparachute = u32(C.SDL_INIT_NOPARACHUTE) // 0x00100000u compatibility; this flag is ignored.
const init_sensor = u32(C.SDL_INIT_SENSOR) // 0x00008000u
const init_events = u32(C.SDL_INIT_EVENTS) // 0x00004000u
const init_gamecontroller = u32(C.SDL_INIT_GAMECONTROLLER) // 0x00002000u SDL_INIT_GAMECONTROLLER implies SDL_INIT_JOYSTICK
const init_haptic = u32(C.SDL_INIT_HAPTIC) // 0x00001000u
const init_joystick = u32(C.SDL_INIT_JOYSTICK) // 0x00000200u SDL_INIT_JOYSTICK implies SDL_INIT_EVENTS
const init_video = u32(C.SDL_INIT_VIDEO) // 0x00000020u SDL_INIT_VIDEO implies SDL_INIT_EVENTS
const init_audio = u32(C.SDL_INIT_AUDIO) // 0x00000010u
const init_timer = u32(C.SDL_INIT_TIMER) // 0x00000001u
const null = unsafe { nil }
const alpha_transparent = C.SDL_ALPHA_TRANSPARENT // 0
const alpha_opaque = C.SDL_ALPHA_OPAQUE // 255
const button_x2mask = int(C.SDL_BUTTON_X2MASK) // SDL_BUTTON(SDL_BUTTON_X2)
const button_x1mask = int(C.SDL_BUTTON_X1MASK) // SDL_BUTTON(SDL_BUTTON_X1)
const button_rmask = int(C.SDL_BUTTON_RMASK) // SDL_BUTTON(SDL_BUTTON_RIGHT)
const button_mmask = int(C.SDL_BUTTON_MMASK) // SDL_BUTTON(SDL_BUTTON_MIDDLE)
const button_lmask = int(C.SDL_BUTTON_LMASK) // SDL_BUTTON(SDL_BUTTON_LEFT)
const button_x2 = int(C.SDL_BUTTON_X2) // 5
const button_x1 = int(C.SDL_BUTTON_X1) // 4
const button_right = int(C.SDL_BUTTON_RIGHT) // 3
const button_middle = int(C.SDL_BUTTON_MIDDLE) // 2
const button_left = int(C.SDL_BUTTON_LEFT) // 1
const sdlk_scancode_mask = C.SDLK_SCANCODE_MASK // (1<<30)
const hint_apple_rwfromfile_use_resources = 'SDL_APPLE_RWFROMFILE_USE_RESOURCES'
const hint_shutdown_dbus_on_quit = 'SDL_SHUTDOWN_DBUS_ON_QUIT'
const hint_trackpad_is_touch_only = 'SDL_TRACKPAD_IS_TOUCH_ONLY'
const hint_kmsdrm_device_index = 'SDL_KMSDRM_DEVICE_INDEX'
const hint_audiodriver = 'SDL_AUDIODRIVER'
const hint_videodriver = 'SDL_VIDEODRIVER'
const hint_quit_on_last_window_close = 'SDL_QUIT_ON_LAST_WINDOW_CLOSE'
const hint_x11_window_type = 'SDL_X11_WINDOW_TYPE'
const hint_audio_include_monitors = 'SDL_AUDIO_INCLUDE_MONITORS'
const hint_xinput_use_old_joystick_mapping = 'SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING'
const hint_directinput_enabled = 'SDL_DIRECTINPUT_ENABLED'
const hint_xinput_enabled = 'SDL_XINPUT_ENABLED'
const hint_x11_force_override_redirect = 'SDL_X11_FORCE_OVERRIDE_REDIRECT'
const hint_winrt_privacy_policy_url = 'SDL_WINRT_PRIVACY_POLICY_URL'
const hint_winrt_privacy_policy_label = 'SDL_WINRT_PRIVACY_POLICY_LABEL'
const hint_winrt_handle_back_button = 'SDL_WINRT_HANDLE_BACK_BUTTON'
const hint_window_no_activation_when_shown = 'SDL_WINDOW_NO_ACTIVATION_WHEN_SHOWN'
const hint_window_frame_usable_while_cursor_hidden = 'SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN'
const hint_windows_dpi_scaling = 'SDL_WINDOWS_DPI_SCALING'
const hint_windows_dpi_awareness = 'SDL_WINDOWS_DPI_AWARENESS'
const hint_windows_use_d3d9ex = 'SDL_WINDOWS_USE_D3D9EX'
const hint_windows_no_close_on_alt_f4 = 'SDL_WINDOWS_NO_CLOSE_ON_ALT_F4'
const hint_windows_intresource_icon_small = 'SDL_WINDOWS_INTRESOURCE_ICON_SMALL'
const hint_windows_intresource_icon = 'SDL_WINDOWS_INTRESOURCE_ICON'
const hint_windows_force_semaphore_kernel = 'SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL'
const hint_windows_force_mutex_critical_sections = 'SDL_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS'
const hint_windows_enable_messageloop = 'SDL_WINDOWS_ENABLE_MESSAGELOOP'
const hint_windows_enable_menu_mnemonics = 'SDL_WINDOWS_ENABLE_MENU_MNEMONICS'
const hint_windows_disable_thread_naming = 'SDL_WINDOWS_DISABLE_THREAD_NAMING'
const hint_wave_truncation = 'SDL_WAVE_TRUNCATION'
const hint_wave_riff_chunk_size = 'SDL_WAVE_RIFF_CHUNK_SIZE'
const hint_wave_fact_chunk = 'SDL_WAVE_FACT_CHUNK'
const hint_video_x11_xvidmode = 'SDL_VIDEO_X11_XVIDMODE'
const hint_video_x11_xrandr = 'SDL_VIDEO_X11_XRANDR'
const hint_video_x11_xinerama = 'SDL_VIDEO_X11_XINERAMA'
const hint_video_x11_window_visualid = 'SDL_VIDEO_X11_WINDOW_VISUALID'
const hint_video_x11_net_wm_ping = 'SDL_VIDEO_X11_NET_WM_PING'
const hint_video_x11_net_wm_bypass_compositor = 'SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR'
const hint_video_x11_force_egl = 'SDL_VIDEO_X11_FORCE_EGL'
const hint_video_win_d3dcompiler = 'SDL_VIDEO_WIN_D3DCOMPILER'
const hint_video_foreign_window_vulkan = 'SDL_VIDEO_FOREIGN_WINDOW_VULKAN'
const hint_video_foreign_window_opengl = 'SDL_VIDEO_FOREIGN_WINDOW_OPENGL'
const hint_video_window_share_pixel_format = 'SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT'
const hint_video_wayland_emulate_mouse_warp = 'SDL_VIDEO_WAYLAND_EMULATE_MOUSE_WARP'
const hint_video_wayland_mode_emulation = 'SDL_VIDEO_WAYLAND_MODE_EMULATION'
const hint_video_wayland_prefer_libdecor = 'SDL_VIDEO_WAYLAND_PREFER_LIBDECOR'
const hint_video_wayland_allow_libdecor = 'SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR'
const hint_video_minimize_on_focus_loss = 'SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS'
const hint_video_mac_fullscreen_spaces = 'SDL_VIDEO_MAC_FULLSCREEN_SPACES'
const hint_video_highdpi_disabled = 'SDL_VIDEO_HIGHDPI_DISABLED'
const hint_video_external_context = 'SDL_VIDEO_EXTERNAL_CONTEXT'
const hint_video_egl_allow_transparency = 'SDL_VIDEO_EGL_ALLOW_TRANSPARENCY'
const hint_video_double_buffer = 'SDL_VIDEO_DOUBLE_BUFFER'
const hint_video_allow_screensaver = 'SDL_VIDEO_ALLOW_SCREENSAVER'
const hint_tv_remote_as_joystick = 'SDL_TV_REMOTE_AS_JOYSTICK'
const hint_vita_touch_mouse_device = 'SDL_HINT_VITA_TOUCH_MOUSE_DEVICE'
const hint_touch_mouse_events = 'SDL_TOUCH_MOUSE_EVENTS'
const hint_timer_resolution = 'SDL_TIMER_RESOLUTION'
const hint_thread_stack_size = 'SDL_THREAD_STACK_SIZE'
const hint_thread_priority_policy = 'SDL_THREAD_PRIORITY_POLICY'
const hint_thread_force_realtime_time_critical = 'SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL'
const hint_screensaver_inhibit_activity_name = 'SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME'
const hint_rpi_video_layer = 'SDL_RPI_VIDEO_LAYER'
const hint_return_key_hides_ime = 'SDL_RETURN_KEY_HIDES_IME'
const hint_ps2_dynamic_vsync = 'SDL_PS2_DYNAMIC_VSYNC'
const hint_rog_gamepad_mice_excluded = 'SDL_ROG_GAMEPAD_MICE_EXCLUDED'
const hint_rog_gamepad_mice = 'SDL_ROG_GAMEPAD_MICE'
const hint_render_metal_prefer_low_power_device = 'SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE'
const hint_render_vsync = 'SDL_RENDER_VSYNC'
const hint_render_scale_quality = 'SDL_RENDER_SCALE_QUALITY'
const hint_render_opengl_shaders = 'SDL_RENDER_OPENGL_SHADERS'
const hint_render_logical_size_mode = 'SDL_RENDER_LOGICAL_SIZE_MODE'
const hint_render_driver = 'SDL_RENDER_DRIVER'
const hint_render_direct3d_threadsafe = 'SDL_RENDER_DIRECT3D_THREADSAFE'
const hint_render_direct3d11_debug = 'SDL_RENDER_DIRECT3D11_DEBUG'
const hint_render_line_method = 'SDL_RENDER_LINE_METHOD'
const hint_render_batching = 'SDL_RENDER_BATCHING'
const hint_qtwayland_window_flags = 'SDL_QTWAYLAND_WINDOW_FLAGS'
const hint_qtwayland_content_orientation = 'SDL_QTWAYLAND_CONTENT_ORIENTATION'
const hint_preferred_locales = 'SDL_PREFERRED_LOCALES'
const hint_poll_sentinel = 'SDL_POLL_SENTINEL'
const hint_orientations = 'SDL_IOS_ORIENTATIONS'
const hint_opengl_es_driver = 'SDL_OPENGL_ES_DRIVER'
const hint_no_signal_handlers = 'SDL_NO_SIGNAL_HANDLERS'
const hint_mouse_auto_capture = 'SDL_MOUSE_AUTO_CAPTURE'
const hint_mouse_touch_events = 'SDL_MOUSE_TOUCH_EVENTS'
const hint_mouse_relative_warp_motion = 'SDL_MOUSE_RELATIVE_WARP_MOTION'
const hint_mouse_relative_system_scale = 'SDL_MOUSE_RELATIVE_SYSTEM_SCALE'
const hint_mouse_relative_speed_scale = 'SDL_MOUSE_RELATIVE_SPEED_SCALE'
const hint_mouse_relative_scaling = 'SDL_MOUSE_RELATIVE_SCALING'
const hint_mouse_relative_mode_warp = 'SDL_MOUSE_RELATIVE_MODE_WARP'
const hint_mouse_relative_mode_center = 'SDL_MOUSE_RELATIVE_MODE_CENTER'
const hint_mouse_normal_speed_scale = 'SDL_MOUSE_NORMAL_SPEED_SCALE'
const hint_mouse_focus_clickthrough = 'SDL_MOUSE_FOCUS_CLICKTHROUGH'
const hint_mouse_double_click_time = 'SDL_MOUSE_DOUBLE_CLICK_TIME'
const hint_mouse_double_click_radius = 'SDL_MOUSE_DOUBLE_CLICK_RADIUS'
const hint_mac_opengl_async_dispatch = 'SDL_MAC_OPENGL_ASYNC_DISPATCH'
const hint_mac_ctrl_click_emulate_right_click = 'SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK'
const hint_mac_background_app = 'SDL_MAC_BACKGROUND_APP'
const hint_logging = 'SDL_LOGGING'
const hint_linux_joystick_deadzones = 'SDL_LINUX_JOYSTICK_DEADZONES'
const hint_linux_joystick_classic = 'SDL_LINUX_JOYSTICK_CLASSIC'
const hint_linux_hat_deadzones = 'SDL_LINUX_HAT_DEADZONES'
const hint_linux_digital_hats = 'SDL_LINUX_DIGITAL_HATS'
const hint_joystick_device = 'SDL_JOYSTICK_DEVICE'
const hint_kmsdrm_require_drm_master = 'SDL_KMSDRM_REQUIRE_DRM_MASTER'
const hint_joystick_zero_centered_devices = 'SDL_JOYSTICK_ZERO_CENTERED_DEVICES'
const hint_joystick_wheel_devices_excluded = 'SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED'
const hint_joystick_wheel_devices = 'SDL_JOYSTICK_WHEEL_DEVICES'
const hint_joystick_wgi = 'SDL_JOYSTICK_WGI'
const hint_joystick_throttle_devices_excluded = 'SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED'
const hint_joystick_throttle_devices = 'SDL_JOYSTICK_THROTTLE_DEVICES'
const hint_joystick_thread = 'SDL_JOYSTICK_THREAD'
const hint_joystick_rog_chakram = 'SDL_JOYSTICK_ROG_CHAKRAM'
const hint_joystick_rawinput_correlate_xinput = 'SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT'
const hint_joystick_rawinput = 'SDL_JOYSTICK_RAWINPUT'
const hint_joystick_mfi = 'SDL_JOYSTICK_MFI'
const hint_joystick_iokit = 'SDL_JOYSTICK_IOKIT'
const hint_joystick_hidapi_xbox_one_home_led = 'SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED'
const hint_joystick_hidapi_xbox_one = 'SDL_JOYSTICK_HIDAPI_XBOX_ONE'
const hint_joystick_hidapi_xbox_360_wireless = 'SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS'
const hint_joystick_hidapi_xbox_360_player_led = 'SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED'
const hint_joystick_hidapi_xbox_360 = 'SDL_JOYSTICK_HIDAPI_XBOX_360'
const hint_joystick_hidapi_xbox = 'SDL_JOYSTICK_HIDAPI_XBOX'
const hint_joystick_hidapi_wii_player_led = 'SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED'
const hint_joystick_hidapi_wii = 'SDL_JOYSTICK_HIDAPI_WII'
const hint_joystick_hidapi_switch_player_led = 'SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED'
const hint_joystick_hidapi_joycon_home_led = 'SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED'
const hint_joystick_hidapi_switch_home_led = 'SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED'
const hint_joystick_hidapi_switch = 'SDL_JOYSTICK_HIDAPI_SWITCH'
const hint_joystick_hidapi_steamdeck = 'SDL_JOYSTICK_HIDAPI_STEAMDECK'
const hint_joystick_hidapi_steam = 'SDL_JOYSTICK_HIDAPI_STEAM'
const hint_joystick_hidapi_stadia = 'SDL_JOYSTICK_HIDAPI_STADIA'
const hint_joystick_hidapi_ps5_rumble = 'SDL_JOYSTICK_HIDAPI_PS5_RUMBLE'
const hint_joystick_hidapi_ps5_player_led = 'SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED'
const hint_joystick_hidapi_ps5 = 'SDL_JOYSTICK_HIDAPI_PS5'
const hint_joystick_hidapi_ps4_rumble = 'SDL_JOYSTICK_HIDAPI_PS4_RUMBLE'
const hint_joystick_hidapi_ps4 = 'SDL_JOYSTICK_HIDAPI_PS4'
const hint_joystick_hidapi_ps3 = 'SDL_JOYSTICK_HIDAPI_PS3'
const hint_joystick_hidapi_shield = 'SDL_JOYSTICK_HIDAPI_SHIELD'
const hint_joystick_hidapi_nintendo_classic = 'SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC'
const hint_joystick_hidapi_luna = 'SDL_JOYSTICK_HIDAPI_LUNA'
const hint_joystick_hidapi_vertical_joy_cons = 'SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS'
const hint_joystick_hidapi_combine_joy_cons = 'SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS'
const hint_joystick_hidapi_joy_cons = 'SDL_JOYSTICK_HIDAPI_JOY_CONS'
const hint_joystick_gamecube_rumble_brake = 'SDL_JOYSTICK_GAMECUBE_RUMBLE_BRAKE'
const hint_joystick_hidapi_gamecube = 'SDL_JOYSTICK_HIDAPI_GAMECUBE'
const hint_joystick_hidapi = 'SDL_JOYSTICK_HIDAPI'
const hint_joystick_gamecube_devices_excluded = 'SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED'
const hint_joystick_gamecube_devices = 'SDL_JOYSTICK_GAMECUBE_DEVICES'
const hint_joystick_flightstick_devices_excluded = 'SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED'
const hint_joystick_flightstick_devices = 'SDL_JOYSTICK_FLIGHTSTICK_DEVICES'
const hint_joystick_blacklist_devices_excluded = 'SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED'
const hint_joystick_blacklist_devices = 'SDL_JOYSTICK_BLACKLIST_DEVICES'
const hint_joystick_arcadestick_devices_excluded = 'SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED'
const hint_joystick_arcadestick_devices = 'SDL_JOYSTICK_ARCADESTICK_DEVICES'
const hint_joystick_allow_background_events = 'SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS'
const hint_ios_hide_home_indicator = 'SDL_IOS_HIDE_HOME_INDICATOR'
const hint_ime_support_extended_text = 'SDL_IME_SUPPORT_EXTENDED_TEXT'
const hint_ime_show_ui = 'SDL_IME_SHOW_UI'
const hint_ime_internal_editing = 'SDL_IME_INTERNAL_EDITING'
const hint_idle_timer_disabled = 'SDL_IOS_IDLE_TIMER_DISABLED'
const hint_hidapi_ignore_devices = 'SDL_HIDAPI_IGNORE_DEVICES'
const hint_grab_keyboard = 'SDL_GRAB_KEYBOARD'
const hint_gamecontroller_use_button_labels = 'SDL_GAMECONTROLLER_USE_BUTTON_LABELS'
const hint_gamecontroller_ignore_devices_except = 'SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT'
const hint_gamecontroller_ignore_devices = 'SDL_GAMECONTROLLER_IGNORE_DEVICES'
const hint_gamecontrollertype = 'SDL_GAMECONTROLLERTYPE'
const hint_gamecontrollerconfig_file = 'SDL_GAMECONTROLLERCONFIG_FILE'
const hint_gamecontrollerconfig = 'SDL_GAMECONTROLLERCONFIG'
const hint_framebuffer_acceleration = 'SDL_FRAMEBUFFER_ACCELERATION'
const hint_force_raisewindow = 'SDL_HINT_FORCE_RAISEWINDOW'
const hint_event_logging = 'SDL_EVENT_LOGGING'
const hint_enable_steam_controllers = 'SDL_ENABLE_STEAM_CONTROLLERS'
const hint_enable_screen_keyboard = 'SDL_ENABLE_SCREEN_KEYBOARD'
const hint_emscripten_keyboard_element = 'SDL_EMSCRIPTEN_KEYBOARD_ELEMENT'
const hint_emscripten_asyncify = 'SDL_EMSCRIPTEN_ASYNCIFY'
const hint_display_usable_bounds = 'SDL_DISPLAY_USABLE_BOUNDS'
const hint_bmp_save_legacy_format = 'SDL_BMP_SAVE_LEGACY_FORMAT'
const hint_auto_update_sensors = 'SDL_AUTO_UPDATE_SENSORS'
const hint_auto_update_joysticks = 'SDL_AUTO_UPDATE_JOYSTICKS'
const hint_audio_resampling_mode = 'SDL_AUDIO_RESAMPLING_MODE'
const hint_audio_device_stream_role = 'SDL_AUDIO_DEVICE_STREAM_ROLE'
const hint_audio_device_stream_name = 'SDL_AUDIO_DEVICE_STREAM_NAME'
const hint_audio_device_app_name = 'SDL_AUDIO_DEVICE_APP_NAME'
const hint_audio_category = 'SDL_AUDIO_CATEGORY'
const hint_apple_tv_remote_allow_rotation = 'SDL_APPLE_TV_REMOTE_ALLOW_ROTATION'
const hint_apple_tv_controller_ui_events = 'SDL_APPLE_TV_CONTROLLER_UI_EVENTS'
const hint_app_name = 'SDL_APP_NAME'
const hint_android_trap_back_button = 'SDL_ANDROID_TRAP_BACK_BUTTON'
const hint_android_block_on_pause_pauseaudio = 'SDL_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO'
const hint_android_block_on_pause = 'SDL_ANDROID_BLOCK_ON_PAUSE'
const hint_android_apk_expansion_patch_file_version = 'SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION'
const hint_android_apk_expansion_main_file_version = 'SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION'
const hint_allow_topmost = 'SDL_ALLOW_TOPMOST'
const hint_allow_alt_tab_while_grabbed = 'SDL_ALLOW_ALT_TAB_WHILE_GRABBED'
const hint_accelerometer_as_joystick = 'SDL_ACCELEROMETER_AS_JOYSTICK'
const enable = C.SDL_ENABLE // 1
const disable = C.SDL_DISABLE // 0
const ignore = C.SDL_IGNORE // 0
const query = C.SDL_QUERY // -1
const texteditingevent_text_size = C.SDL_TEXTEDITINGEVENT_TEXT_SIZE // (32)
const textinputevent_text_size = C.SDL_TEXTINPUTEVENT_TEXT_SIZE // (32)
const pressed = C.SDL_PRESSED // 1
const released = C.SDL_RELEASED // 0
const audio_mask_bitsize = C.SDL_AUDIO_MASK_BITSIZE
const audio_mask_datatype = C.SDL_AUDIO_MASK_DATATYPE
const audio_mask_endian = C.SDL_AUDIO_MASK_ENDIAN
const audio_mask_signed = C.SDL_AUDIO_MASK_SIGNED
const audio_u8 = C.AUDIO_U8 // 0x0008, Unsigned 8-bit samples
const audio_s8 = C.AUDIO_S8 // 0x8008, Signed 8-bit samples
const audio_u16lsb = C.AUDIO_U16LSB // 0x0010, Unsigned 16-bit samples
const audio_s16lsb = C.AUDIO_S16LSB // 0x8010, Signed 16-bit samples
const audio_u16msb = C.AUDIO_U16MSB // 0x1010, As above, but big-endian byte order
const audio_s16msb = C.AUDIO_S16MSB // 0x9010, As above, but big-endian byte order
const audio_u16 = C.AUDIO_U16 // AUDIO_U16LSB
const audio_s16 = C.AUDIO_S16 // AUDIO_S16LSB
const audio_s32lsb = C.AUDIO_S32LSB // 0x8020, 32-bit integer samples
const audio_s32msb = C.AUDIO_S32MSB // 0x9020, As above, but big-endian byte order
const audio_s32 = C.AUDIO_S32 // AUDIO_S32LSB
const audio_f32lsb = C.AUDIO_F32LSB // 0x8120, 32-bit floating point samples
const audio_f32msb = C.AUDIO_F32MSB // 0x9120, As above, but big-endian byte order
const audio_f32 = C.AUDIO_F32
const audio_u16sys = C.AUDIO_U16SYS
const audio_s16sys = C.AUDIO_S16SYS
const audio_s32sys = C.AUDIO_S32SYS
const audio_f32sys = C.AUDIO_F32SYS
const audio_allow_frequency_change = C.SDL_AUDIO_ALLOW_FREQUENCY_CHANGE // 0x00000001
const audio_allow_format_change = C.SDL_AUDIO_ALLOW_FORMAT_CHANGE // 0x00000002
const audio_allow_channels_change = C.SDL_AUDIO_ALLOW_CHANNELS_CHANGE // 0x00000004
const sdl_audio_allow_samples_change = C.SDL_AUDIO_ALLOW_SAMPLES_CHANGE // 0x00000008
const audio_allow_any_change = C.SDL_AUDIO_ALLOW_ANY_CHANGE
const audiocvt_max_filters = C.SDL_AUDIOCVT_MAX_FILTERS // 9
const mix_maxvolume = C.SDL_MIX_MAXVOLUME // 128
const lil_endian = C.SDL_LIL_ENDIAN
const big_endian = C.SDL_BIG_ENDIAN
const byteorder = C.SDL_BYTEORDER
const haptic_constant = C.SDL_HAPTIC_CONSTANT // (1u<<0) // u32(1) << 0
const haptic_sine = C.SDL_HAPTIC_SINE // (1u<<1)
const haptic_leftright = C.SDL_HAPTIC_LEFTRIGHT // (1u<<2)
const haptic_triangle = C.SDL_HAPTIC_TRIANGLE //  (1u<<3)
const haptic_sawtoothup = C.SDL_HAPTIC_SAWTOOTHUP //(1u<<4)
const haptic_sawtoothdown = C.SDL_HAPTIC_SAWTOOTHDOWN //(1u<<5)
const haptic_ramp = C.SDL_HAPTIC_RAMP //     (1u<<6)
const haptic_spring = C.SDL_HAPTIC_SPRING //   (1u<<7)
const haptic_damper = C.SDL_HAPTIC_DAMPER //  (1u<<8)
const haptic_inertia = C.SDL_HAPTIC_INERTIA //  (1u<<9)
const haptic_friction = C.SDL_HAPTIC_FRICTION //  (1u<<10)
const haptic_custom = C.SDL_HAPTIC_CUSTOM //  (1u<<11)
const haptic_gain = C.SDL_HAPTIC_GAIN //   (1u<<12)
const haptic_autocenter = C.SDL_HAPTIC_AUTOCENTER //(1u<<13)
const haptic_status = C.SDL_HAPTIC_STATUS //   (1u<<14)
const haptic_pause = C.SDL_HAPTIC_PAUSE //   (1u<<15)
const haptic_polar = C.SDL_HAPTIC_POLAR // 0
const haptic_cartesian = C.SDL_HAPTIC_CARTESIAN // 1
const haptic_spherical = C.SDL_HAPTIC_SPHERICAL // 2
const haptic_steering_axis = C.SDL_HAPTIC_STEERING_AXIS
const haptic_infinity = C.SDL_HAPTIC_INFINITY // 4294967295U
const joystick_axis_max = C.SDL_JOYSTICK_AXIS_MAX // 32767
const joystick_axis_min = C.SDL_JOYSTICK_AXIS_MIN // -32768
const hat_centered = C.SDL_HAT_CENTERED // 0x00
const hat_up = C.SDL_HAT_UP // 0x01
const hat_right = C.SDL_HAT_RIGHT // 0x02
const hat_down = C.SDL_HAT_DOWN // 0x04
const hat_left = C.SDL_HAT_LEFT // 0x08
const hat_rightup = C.SDL_HAT_RIGHTUP // hat_right | hat_up
const hat_rightdown = C.SDL_HAT_RIGHTDOWN // hat_right | hat_down
const hat_leftup = C.SDL_HAT_LEFTUP // hat_left | hat_up
const hat_leftdown = C.SDL_HAT_LEFTDOWN // hat_left | hat_down
const iphone_max_gforce = C.SDL_IPHONE_MAX_GFORCE // 5.0
const virtual_joystick_desc_version = C.SDL_VIRTUAL_JOYSTICK_DESC_VERSION // 1
const max_log_message = C.SDL_MAX_LOG_MESSAGE // 4096
const mutex_timeout = C.SDL_MUTEX_TIMEDOUT // 1
const mutex_maxwait = C.SDL_MUTEX_MAXWAIT // (~(Uint32)0)
const rwops_unknown = C.SDL_RWOPS_UNKNOWN // 0U, Unknown stream type
const rwops_winfile = C.SDL_RWOPS_WINFILE // 1U, Win32 file
const rwops_stdfile = C.SDL_RWOPS_STDFILE // 2U, Stdio file
const rwops_jnifile = C.SDL_RWOPS_JNIFILE // 3U, Android asset
const rwops_memory = C.SDL_RWOPS_MEMORY // 4U, Memory stream
const rwops_memory_ro = C.SDL_RWOPS_MEMORY_RO // 5U, Read-Only memory stream
const rw_seek_set = C.RW_SEEK_SET // 0, Seek from the beginning of data
const rw_seek_cur = C.RW_SEEK_CUR // 1, Seek relative to current read point
const rw_seek_end = C.RW_SEEK_END // 2, Seek relative to the end of data
const used_import = c.used_import
const max_sint8 = C.SDL_MAX_SINT8 // 127
const min_sint8 = C.SDL_MIN_SINT8 // -128
const max_uint8 = C.SDL_MAX_UINT8 // 255
const min_uint8 = C.SDL_MIN_UINT8 // 0
const max_sint16 = C.SDL_MAX_SINT16 // 32767
const min_sint16 = C.SDL_MIN_SINT16 // -32768
const max_uint16 = C.SDL_MAX_UINT16 // 65535
const min_uint16 = C.SDL_MIN_UINT16 // 0
const max_sint32 = C.SDL_MAX_SINT32 // 2147483647
const min_sint32 = C.SDL_MIN_SINT32 // -2147483648
const max_uint32 = C.SDL_MAX_UINT32 // 4294967295
const min_uint32 = C.SDL_MIN_UINT32 // 0
const max_sint64 = C.SDL_MAX_SINT64 // 9223372036854775807
const min_sint64 = C.SDL_MIN_SINT64 // -9223372036854775808
const max_uint64 = C.SDL_MAX_UINT64 // 18446744073709551615
const min_uint64 = C.SDL_MIN_UINT64 // 0
const m_pi = C.M_PI // 3.14159265358979323846264338327950288 // pi
const iconv_error = C.SDL_ICONV_ERROR // (size_t)-1
const iconv_e2big = C.SDL_ICONV_E2BIG // (size_t)-2
const iconv_eilseq = C.SDL_ICONV_EILSEQ // (size_t)-3
const iconv_einval = C.SDL_ICONV_EINVAL // (size_t)-4
const major_version = C.SDL_MAJOR_VERSION // 2
const minor_version = C.SDL_MINOR_VERSION // 32
const patchlevel = C.SDL_PATCHLEVEL // 0
fn C.SDL_COMPILEDVERSION() int
fn C.SDL_ResetHint(const_name &char) bool
fn C.SDL_VERSIONNUM(x int, y int, z int) int
fn C.SDL_VERSION_ATLEAST(x int, y int, z int) bool
fn abs(x int) int
fn acos(x f64) f64
fn acosf(x f32) f32
fn add_event_watch(filter EventFilter, userdata voidptr)
fn add_hint_callback(name &char, callback HintCallback, userdata voidptr)
fn add_timer(interval u32, callback TimerCallback, param voidptr) TimerID
fn alloc_format(pixel_format Format) &PixelFormat
fn alloc_palette(ncolors int) &Palette
fn alloc_rw() &RWops
fn asin(x f64) f64
fn asinf(x f32) f32
fn atan(x f64) f64
fn atan2(y f64, x f64) f64
fn atan2f(y f32, x f32) f32
fn atanf(x f32) f32
fn atof(str &char) f64
fn atoi(str &char) int
fn atomic_add(a &AtomicT, v int) int
fn atomic_cas(a &C.SDL_atomic_t, oldval int, newval int) bool
fn atomic_cas_ptr(a voidptr, oldval voidptr, newval voidptr) bool
fn atomic_dec_ref(a &AtomicT) bool
fn atomic_get(a &AtomicT) int
fn atomic_get_ptr(a voidptr) voidptr
fn atomic_inc_ref(a &AtomicT) int
fn atomic_lock(lock_ &SpinLock)
fn atomic_set(a &AtomicT, v int) int
fn atomic_set_ptr(a voidptr, v voidptr) voidptr
fn atomic_try_lock(lock_ &SpinLock) bool
fn atomic_unlock(lock_ &SpinLock)
fn audio_bitsize(x int) int
fn audio_init(driver_name &char) int
fn audio_isbigendian(x int) bool
fn audio_isfloat(x int) bool
fn audio_isint(x int) bool
fn audio_islittleendian(x int) bool
fn audio_issigned(x int) bool
fn audio_isunsigned(x int) bool
fn audio_quit()
fn audio_stream_available(stream &AudioStream) int
fn audio_stream_clear(stream &AudioStream)
fn audio_stream_flush(stream &AudioStream) int
fn audio_stream_get(stream &AudioStream, buf voidptr, len int) int
fn audio_stream_put(stream &AudioStream, const_buf voidptr, len int) int
fn blit_scaled(src &Surface, srcrect &Rect, dst &Surface, dstrect &Rect) int
fn blit_surface(src &Surface, srcrect &Rect, dst &Surface, dstrect &Rect) int
fn bsearch(const_key voidptr, const_base voidptr, nmemb usize, size usize, compare fn (voidptr, voidptr)) voidptr
fn build_audio_cvt(cvt &AudioCVT, src_format AudioFormat, src_channels u8, src_rate int, dst_format AudioFormat, dst_channels u8, dst_rate int) int
fn button(mask int) int
fn calculate_gamma_ramp(gamma f32, ramp &u16)
fn calloc(nmemb usize, size usize) voidptr
fn capture_mouse(enabled bool) int
fn ceil(x f64) f64
fn ceilf(x f32) f32
fn clear_composition()
fn clear_error()
fn clear_hints()
fn clear_queued_audio(dev AudioDeviceID)
fn close_audio()
fn close_audio_device(dev AudioDeviceID)
fn compose_custom_blend_mode(src_color_factor BlendFactor, dst_color_factor BlendFactor, color_operation BlendOperation, src_alpha_factor BlendFactor, dst_alpha_factor BlendFactor, alpha_operation BlendOperation) BlendMode
fn cond_broadcast(cond &Cond) int
fn cond_signal(cond &Cond) int
fn cond_wait(cond &Cond, mutex &Mutex) int
fn cond_wait_timeout(cond &Cond, mutex &Mutex, ms u32) int
fn convert_audio(cvt &AudioCVT) int
fn convert_pixels(width int, height int, const_src_format u32, const_src voidptr, const_src_pitch int, dst_format u32, dst voidptr, dst_pitch int) int
fn convert_surface(src &Surface, const_fmt &PixelFormat, flags u32) &Surface
fn convert_surface_format(src &Surface, pixel_format u32, flags u32) &Surface
fn copysign(x f64, y f64) f64
fn copysignf(x f32, y f32) f32
fn cos(x f64) f64
fn cosf(x f32) f32
fn crc16(crc u16, const_data voidptr, len usize) u16
fn crc32(crc u32, const_data voidptr, len usize) u32
fn create_color_cursor(surface &Surface, hot_x int, hot_y int) &Cursor
fn create_cond() &Cond
fn create_cursor(const_data &u8, const_mask &u8, w int, h int, hot_x int, hot_y int) &Cursor
fn create_mutex() &C.SDL_mutex
fn create_renderer(window &Window, index int, flags u32) &Renderer
fn create_rgb_surface(flags u32, width int, height int, depth int, rmask u32, gmask u32, bmask u32, amask u32) &Surface
fn create_rgb_surface_from(pixels voidptr, width int, height int, depth int, pitch int, rmask u32, gmask u32, bmask u32, amask u32) &Surface
fn create_rgb_surface_with_format(flags u32, width int, height int, depth int, format u32) &Surface
fn create_rgb_surface_with_format_from(pixels voidptr, width int, height int, depth int, pitch int, format u32) &Surface
fn create_semaphore(initial_value u32) &Sem
fn create_shaped_window(title &char, x u32, y u32, w u32, h u32, flags u32) &Window
fn create_software_renderer(surface &Surface) &Renderer
fn create_system_cursor(id SystemCursor) &Cursor
fn create_texture(renderer &Renderer, format Format, access TextureAccess, w int, h int) &Texture
fn create_texture_from_surface(renderer &Renderer, surface &Surface) &Texture
fn create_thread(func ThreadFunction, const_name &char, data voidptr) &Thread
fn create_thread_with_stack_size(func ThreadFunction, const_name &char, const_stacksize usize, data voidptr) &Thread
fn create_window(title &char, x int, y int, w int, h int, flags u32) &Window
fn create_window_and_renderer(width int, height int, window_flags u32, window &&Window, renderer &&Renderer) int
fn create_window_from(data voidptr) &Window
fn del_event_watch(filter EventFilter, userdata voidptr)
fn del_hint_callback(name &char, callback HintCallback, userdata voidptr)
fn delay(ms u32)
fn dequeue_audio(dev AudioDeviceID, data voidptr, len u32) u32
fn destroy_cond(cond &Cond)
fn destroy_mutex(mutex &Mutex)
fn destroy_renderer(renderer &Renderer)
fn destroy_semaphore(sem &Sem)
fn destroy_texture(texture &Texture)
fn destroy_window(window &Window)
fn destroy_window_surface(window &Window) int
fn detach_thread(thrd &Thread)
fn disable_screen_saver()
fn duplicate_surface(surface &Surface) &Surface
fn enable_screen_saver()
fn enclose_f_points(const_points &FPoint, count int, const_clip &FRect, result &FRect) bool
fn enclose_points(const_points &Point, count int, const_clip &Rect, result &Rect) bool
fn error(code ErrorCode) int
fn event_state(@type u32, state int) u8
fn exp(x f64) f64
fn expf(x f32) f32
fn fabs(x f64) f64
fn fabsf(x f32) f32
fn fill_rect(dst &Surface, const_rect &Rect, color u32) int
fn fill_rects(dst &Surface, const_rects &Rect, count int, color u32) int
fn filter_events(filter EventFilter, userdata voidptr)
fn flash_window(window &Window, operation FlashOperation) int
fn floor(x f64) f64
fn floorf(x f32) f32
fn flush_event(@type u32)
fn flush_events(min_type u32, max_type u32)
fn fmod(x f64, y f64) f64
fn fmodf(x f32, y f32) f32
fn frect_empty(const_r &FRect) bool
fn frect_equals(const_a &FRect, const_b &FRect) bool
fn frect_equals_epsilon(const_a &FRect, const_b &FRect, const_epsilon f32) bool
fn free(mem voidptr)
fn free_audio_stream(stream &AudioStream)
fn free_cursor(cursor &Cursor)
fn free_format(format &PixelFormat)
fn free_palette(palette &Palette)
fn free_rw(area &RWops)
fn free_surface(surface &Surface)
fn free_wav(audio_buf &u8)
fn game_controller_add_mapping(mapping_string &char) int
fn game_controller_add_mappings_from_file(file &char) int
fn game_controller_add_mappings_from_rw(rw &RWops, freerw int) int
fn game_controller_close(gamecontroller &GameController)
fn game_controller_event_state(state int) int
fn game_controller_from_instance_id(joyid JoystickID) &GameController
fn game_controller_from_player_index(player_index int) &GameController
fn game_controller_get_apple_sf_symbols_name_for_axis(gamecontroller &GameController, axis GameControllerAxis) &char
fn game_controller_get_apple_sf_symbols_name_for_button(gamecontroller &GameController, button GameControllerButton) &char
fn game_controller_get_attached(gamecontroller &GameController) bool
fn game_controller_get_axis(gamecontroller &GameController, axis GameControllerAxis) i16
fn game_controller_get_axis_from_string(const_str &char) GameControllerAxis
fn game_controller_get_bind_for_axis(gamecontroller &GameController, axis GameControllerAxis) GameControllerButtonBind
fn game_controller_get_bind_for_button(gamecontroller &GameController, button GameControllerButton) GameControllerButtonBind
fn game_controller_get_button(gamecontroller &GameController, button GameControllerButton) u8
fn game_controller_get_button_from_string(const_str &char) GameControllerButton
fn game_controller_get_firmware_version(gamecontroller &GameController) u16
fn game_controller_get_joystick(gamecontroller &GameController) &Joystick
fn game_controller_get_num_touchpad_fingers(gamecontroller &GameController, touchpad int) int
fn game_controller_get_num_touchpads(gamecontroller &GameController) int
fn game_controller_get_player_index(gamecontroller &GameController) int
fn game_controller_get_product(gamecontroller &GameController) u16
fn game_controller_get_product_version(gamecontroller &GameController) u16
fn game_controller_get_sensor_data(gamecontroller &GameController, @type SensorType, data &f32, num_values int) int
fn game_controller_get_sensor_data_rate(gamecontroller &GameController, @type SensorType) f32
fn game_controller_get_sensor_data_with_timestamp(gamecontroller &GameController, @type SensorType, timestamp &u64, data &f32, num_values int) int
fn game_controller_get_serial(gamecontroller &GameController) &char
fn game_controller_get_steam_handle(gamecontroller &GameController) u64
fn game_controller_get_string_for_axis(axis GameControllerAxis) &char
fn game_controller_get_string_for_button(button GameControllerButton) &char
fn game_controller_get_touchpad_finger(gamecontroller &GameController, touchpad int, finger int, state &u8, x &f32, y &f32, pressure &f32) int
fn game_controller_get_type(gamecontroller &GameController) GameControllerType
fn game_controller_get_vendor(gamecontroller &GameController) u16
fn game_controller_has_axis(gamecontroller &GameController, axis GameControllerAxis) bool
fn game_controller_has_button(gamecontroller &GameController, button GameControllerButton) bool
fn game_controller_has_led(gamecontroller &GameController) bool
fn game_controller_has_rumble(gamecontroller &C.SDL_GameController) bool
fn game_controller_has_rumble_triggers(gamecontroller &C.SDL_GameController) bool
fn game_controller_has_sensor(gamecontroller &GameController, @type SensorType) bool
fn game_controller_is_sensor_enabled(gamecontroller &GameController, @type SensorType) bool
fn game_controller_mapping(gamecontroller &GameController) &char
fn game_controller_mapping_for_device_index(joystick_index int) &char
fn game_controller_mapping_for_guid(guid JoystickGUID) &char
fn game_controller_mapping_for_index(mapping_index int) &char
fn game_controller_name(gamecontroller &GameController) &char
fn game_controller_name_for_index(joystick_index int) &char
fn game_controller_num_mappings() int
fn game_controller_open(joystick_index int) &GameController
fn game_controller_path(gamecontroller &GameController) &char
fn game_controller_path_for_index(joystick_index int) &char
fn game_controller_rumble(gamecontroller &GameController, low_frequency_rumble u16, high_frequency_rumble u16, duration_ms u32) int
fn game_controller_rumble_triggers(gamecontroller &GameController, left_rumble u16, right_rumble u16, duration_ms u32) int
fn game_controller_send_effect(gamecontroller &GameController, const_data voidptr, size int) int
fn game_controller_set_led(gamecontroller &GameController, red u8, green u8, blue u8) int
fn game_controller_set_player_index(gamecontroller &GameController, player_index int)
fn game_controller_set_sensor_enabled(gamecontroller &GameController, @type SensorType, enabled bool) int
fn game_controller_type_for_index(joystick_index int) GameControllerType
fn game_controller_update()
fn get_audio_device_name(index int, iscapture int) &char
fn get_audio_device_spec(index int, iscapture int, spec &AudioSpec) int
fn get_audio_device_status(dev AudioDeviceID) AudioStatus
fn get_audio_driver(index int) &char
fn get_audio_status() AudioStatus
fn get_base_path() &char
fn get_clip_rect(surface &Surface, rect &Rect)
fn get_clipboard_text() &char
fn get_closest_display_mode(display_index int, const_mode &DisplayMode, closest &DisplayMode) &DisplayMode
fn get_color_key(surface &Surface, key &u32) int
fn get_cpu_cache_line_size() int
fn get_cpu_count() int
fn get_current_audio_driver() &char
fn get_current_display_mode(display_index int, mode &DisplayMode) int
fn get_current_video_driver() &char
fn get_cursor() &Cursor
fn get_default_audio_info(name &&char, spec &AudioSpec, iscapture int) int
fn get_default_cursor() &Cursor
fn get_desktop_display_mode(display_index int, mode &DisplayMode) int
fn get_display_bounds(display_index int, rect &Rect) int
fn get_display_dpi(display_index int, ddpi &f32, hdpi &f32, vdpi &f32) int
fn get_display_mode(display_index int, mode_index int, mode &DisplayMode) int
fn get_display_name(display_index int) &char
fn get_display_orientation(display_index int) DisplayOrientation
fn get_display_usable_bounds(display_index int, rect &Rect) int
fn get_error() &char
fn get_error_msg(errstr &char, maxlen int) &char
fn get_event_filter(filter &EventFilter, userdata voidptr) bool
fn get_global_mouse_state(x &int, y &int) u32
fn get_grabbed_window() &Window
fn get_hint(name &char) &char
fn get_hint_boolean(name &char, default_value bool) bool
fn get_joystick_guid_info(guid JoystickGUID, vendor &u16, product &u16, version &u16, crc16 &u16)
fn get_key_from_name(name &char) Keycode
fn get_key_from_scancode(scancode Scancode) Keycode
fn get_key_name(key Keycode) &char
fn get_keyboard_focus() &Window
fn get_keyboard_state(numkeys &int) &u8
fn get_mod_state() Keymod
fn get_mouse_focus() &Window
fn get_mouse_state(x &int, y &int) u32
fn get_num_allocations() int
fn get_num_audio_devices(iscapture int) int
fn get_num_audio_drivers() int
fn get_num_display_modes(display_index int) int
fn get_num_render_drivers() int
fn get_num_touch_devices() int
fn get_num_touch_fingers(touch_id TouchID) int
fn get_num_video_displays() int
fn get_num_video_drivers() int
fn get_performance_counter() u64
fn get_performance_frequency() u64
fn get_pixel_format_name(format Format) &char
fn get_platform() &char
fn get_point_display_index(const_point &Point) int
fn get_power_info(seconds &int, percent &int) PowerState
fn get_pref_path(const_org &char, const_app &char) &char
fn get_preferred_locales() &Locale
fn get_primary_selection_text() &char
fn get_queued_audio_size(dev AudioDeviceID) u32
fn get_rect_display_index(const_rect &Rect) int
fn get_relative_mouse_mode() bool
fn get_relative_mouse_state(x &int, y &int) u32
fn get_render_draw_blend_mode(renderer &Renderer, blend_mode &BlendMode) int
fn get_render_draw_color(renderer &Renderer, r &u8, g &u8, b &u8, a &u8) int
fn get_render_driver_info(index int, info &RendererInfo) int
fn get_render_target(renderer &Renderer) &Texture
fn get_renderer(window &Window) &Renderer
fn get_renderer_info(renderer &Renderer, info &RendererInfo) int
fn get_renderer_output_size(renderer &Renderer, w &int, h &int) int
fn get_revision() &char
fn get_revision_number() int
fn get_rgb(pixel u32, const_format &PixelFormat, r &u8, g &u8, b &u8)
fn get_rgba(pixel u32, const_format &PixelFormat, r &u8, g &u8, b &u8, a &u8)
fn get_scancode_from_key(key Keycode) Scancode
fn get_scancode_from_name(name &char) Scancode
fn get_scancode_name(scancode Scancode) &char
fn get_shaped_window_mode(window &Window, shape_mode &WindowShapeMode) int
fn get_surface_alpha_mod(surface &Surface, alpha &u8) int
fn get_surface_blend_mode(surface &Surface, blend_mode &BlendMode) int
fn get_surface_color_mod(surface &Surface, r &u8, g &u8, b &u8) int
fn get_system_ram() int
fn get_texture_alpha_mod(texture &Texture, alpha &u8) int
fn get_texture_blend_mode(texture &Texture, blend_mode &BlendMode) int
fn get_texture_color_mod(texture &Texture, r &u8, g &u8, b &u8) int
fn get_texture_scale_mode(texture &Texture, scale_mode &ScaleMode) int
fn get_texture_user_data(texture &C.SDL_Texture) voidptr
fn get_thread_id(thrd &Thread) ThreadID
fn get_thread_name(pthread &Thread) &char
fn get_ticks() u32
fn get_ticks64() u64
fn get_touch_device(index int) TouchID
fn get_touch_device_type(touch_id TouchID) TouchDeviceType
fn get_touch_finger(touch_id TouchID, index int) &Finger
fn get_touch_name(index int) &char
fn get_version(mut ver Version)
fn get_video_driver(index int) &char
fn get_window_borders_size(window &Window, top &int, left &int, bottom &int, right &int) int
fn get_window_brightness(window &Window) f32
fn get_window_data(window &Window, const_name &char) voidptr
fn get_window_display_index(window &Window) int
fn get_window_display_mode(window &Window, mode &DisplayMode) int
fn get_window_flags(window &Window) u32
fn get_window_from_id(id u32) &Window
fn get_window_gamma_ramp(window &Window, red &u16, green &u16, blue &u16) int
fn get_window_grab(window &Window) bool
fn get_window_icc_profile(window &Window, size &usize) voidptr
fn get_window_id(window &Window) u32
fn get_window_keyboard_grab(window &Window) bool
fn get_window_maximum_size(window &Window, w &int, h &int)
fn get_window_minimum_size(window &Window, w &int, h &int)
fn get_window_mouse_grab(window &Window) bool
fn get_window_mouse_rect(window &Window) &Rect
fn get_window_opacity(window &Window, out_opacity &f32) int
fn get_window_pixel_format(window &Window) u32
fn get_window_position(window &Window, x &int, y &int)
fn get_window_size(window &Window, w &int, h &int)
fn get_window_size_in_pixels(window &Window, w &int, h &int)
fn get_window_surface(window &Window) &Surface
fn get_window_title(window &Window) &char
fn get_yuv_conversion_mode() YUVConversionMode
fn get_yuv_conversion_mode_for_resolution(width int, height int) YUVConversionMode
fn getenv(name &char) &char
fn gl_bind_texture(texture &Texture, texw &f32, texh &f32) int
fn gl_create_context(window &Window) GLContext
fn gl_delete_context(context GLContext)
fn gl_extension_supported(extension &char) bool
fn gl_get_attribute(attr GLattr, value &int) int
fn gl_get_current_context() GLContext
fn gl_get_current_window() &Window
fn gl_get_drawable_size(window &Window, w &int, h &int)
fn gl_get_proc_address(proc &char) voidptr
fn gl_get_swap_interval() int
fn gl_load_library(path &char) int
fn gl_make_current(window &Window, context GLContext) int
fn gl_reset_attributes()
fn gl_set_attribute(attr GLattr, value int) int
fn gl_set_swap_interval(interval int) int
fn gl_swap_window(window &Window)
fn gl_unbind_texture(texture &Texture) int
fn gl_unload_library()
fn guid_from_string(const_pch_guid &char) GUID
fn guid_to_string(guid GUID, psz_guid &char, cb_guid int)
fn haptic_close(haptic &Haptic)
fn haptic_destroy_effect(haptic &Haptic, effect int)
fn haptic_effect_supported(haptic &Haptic, effect &HapticEffect) int
fn haptic_get_effect_status(haptic &Haptic, effect int) int
fn haptic_index(haptic &Haptic) int
fn haptic_name(device_index int) &char
fn haptic_new_effect(haptic &Haptic, effect &HapticEffect) int
fn haptic_num_axes(haptic &Haptic) int
fn haptic_num_effects(haptic &Haptic) int
fn haptic_num_effects_playing(haptic &Haptic) int
fn haptic_open(device_index int) &Haptic
fn haptic_open_from_joystick(joystick &Joystick) &Haptic
fn haptic_open_from_mouse() &Haptic
fn haptic_opened(device_index int) int
fn haptic_pause(haptic &Haptic) int
fn haptic_query(haptic &Haptic) u32
fn haptic_rumble_init(haptic &Haptic) int
fn haptic_rumble_play(haptic &Haptic, strength f32, length u32) int
fn haptic_rumble_stop(haptic &Haptic) int
fn haptic_rumble_supported(haptic &Haptic) int
fn haptic_run_effect(haptic &Haptic, effect int, iterations u32) int
fn haptic_set_autocenter(haptic &Haptic, autocenter int) int
fn haptic_set_gain(haptic &Haptic, gain int) int
fn haptic_stop_all(haptic &Haptic) int
fn haptic_stop_effect(haptic &Haptic, effect int) int
fn haptic_unpause(haptic &Haptic) int
fn haptic_update_effect(haptic &Haptic, effect int, data &HapticEffect) int
fn has_3d_now() bool
fn has_alti_vec() bool
fn has_arm_simd() bool
fn has_avx() bool
fn has_avx2() bool
fn has_avx512f() bool
fn has_clipboard_text() bool
fn has_color_key(surface &Surface) bool
fn has_event(@type EventType) bool
fn has_events(min_type u32, max_type u32) bool
fn has_intersection(const_a &Rect, const_b &Rect) bool
fn has_intersection_f(const_a &FRect, const_b &FRect) bool
fn has_lasx() bool
fn has_lsx() bool
fn has_mmx() bool
fn has_neon() bool
fn has_primary_selection_text() bool
fn has_rdtsc() bool
fn has_screen_keyboard_support() bool
fn has_sse() bool
fn has_sse2() bool
fn has_sse3() bool
fn has_sse41() bool
fn has_sse42() bool
fn has_surface_rle(surface &Surface) bool
fn has_window_surface(window &Window) bool
fn hid_ble_scan(active bool)
fn hid_close(dev &HidDevice)
fn hid_device_change_count() u32
fn hid_enumerate(vendor_id u16, product_id u16) &HidDeviceInfo
fn hid_exit() int
fn hid_free_enumeration(devs &HidDeviceInfo)
fn hid_get_feature_report(dev &HidDevice, data &u8, length usize) int
fn hid_get_indexed_string(dev &C.SDL_hid_device, string_index int, string_ &u16, maxlen usize) int
fn hid_get_manufacturer_string(dev &HidDevice, string_ &u16, maxlen usize) int
fn hid_get_product_string(dev &HidDevice, string_ &u16, maxlen usize) int
fn hid_get_serial_number_string(dev &HidDevice, string_ &u16, maxlen usize) int
fn hid_init() int
fn hid_open(vendor_id u16, product_id u16, const_serial_number &u16) &HidDevice
fn hid_open_path(const_path &char, b_exclusive int) &HidDevice
fn hid_read(dev &HidDevice, data &u8, length usize) int
fn hid_read_timeout(dev &HidDevice, data &u8, length usize, milliseconds int) int
fn hid_send_feature_report(dev &HidDevice, const_data &u8, length usize) int
fn hid_set_nonblocking(dev &HidDevice, nonblock int) int
fn hid_write(dev &HidDevice, const_data &u8, length usize) int
fn hide_window(window &Window)
fn iconv(cd C.SDL_iconv_t, const_inbuf &&char, inbytesleft &usize, outbuf &&char, outbytesleft &usize) usize
fn iconv_close(cd C.SDL_iconv_t) int
fn iconv_open(const_tocode &char, const_fromcode &char) IconvT
fn iconv_string(const_tocode &char, const_fromcode &char, const_inbuf &char, inbytesleft usize) &char
fn init(flags u32) int
fn init_sub_system(flags u32) int
fn intersect_frect(const_a &FRect, const_b &FRect, result &FRect) bool
fn intersect_frect_and_line(const_rect &FRect, x1 &f32, y1 &f32, x2 &f32, y2 &f32) bool
fn intersect_rect(const_a &Rect, const_b &Rect, result &Rect) bool
fn intersect_rect_and_line(rect &Rect, x1 &int, y1 &int, x2 &int, y2 &int) bool
fn is_game_controller(joystick_index int) bool
fn is_screen_keyboard_shown(window &Window) bool
fn is_screen_saver_enabled() bool
fn is_shaped_window(window &Window) bool
fn is_tablet() bool
fn is_text_input_active() bool
fn is_text_input_shown() bool
fn isalnum(x int) int
fn isalpha(x int) int
fn isblank(x int) int
fn iscntrl(x int) int
fn isdigit(x int) int
fn isgraph(x int) int
fn islower(x int) int
fn isprint(x int) int
fn ispunct(x int) int
fn isspace(x int) int
fn isupper(x int) int
fn isxdigit(x int) int
fn itoa(value int, str &char, radix int) &char
fn joystick_attach_virtual(@type JoystickType, naxes int, nbuttons int, nhats int) int
fn joystick_attach_virtual_ex(const_desc &VirtualJoystickDesc) int
fn joystick_close(joystick &Joystick)
fn joystick_current_power_level(joystick &Joystick) JoystickPowerLevel
fn joystick_detach_virtual(device_index int) int
fn joystick_event_state(state int) int
fn joystick_from_instance_id(instance_id JoystickID) &Joystick
fn joystick_from_player_index(player_index int) &Joystick
fn joystick_get_attached(joystick &Joystick) bool
fn joystick_get_axis(joystick &Joystick, axis int) i16
fn joystick_get_axis_initial_state(joystick &Joystick, axis int, state &i16) bool
fn joystick_get_ball(joystick &Joystick, ball int, dx &int, dy &int) int
fn joystick_get_button(joystick &Joystick, button int) u8
fn joystick_get_device_guid(device_index int) JoystickGUID
fn joystick_get_device_instance_id(device_index int) JoystickID
fn joystick_get_device_player_index(device_index int) int
fn joystick_get_device_product(device_index int) u16
fn joystick_get_device_product_version(device_index int) u16
fn joystick_get_device_type(device_index int) JoystickType
fn joystick_get_device_vendor(device_index int) u16
fn joystick_get_firmware_version(joystick &Joystick) u16
fn joystick_get_guid(joystick &Joystick) JoystickGUID
fn joystick_get_guid_from_string(pch_guid &char) JoystickGUID
fn joystick_get_guid_string(guid JoystickGUID, psz_guid &char, cb_guid int)
fn joystick_get_hat(joystick &Joystick, hat int) u8
fn joystick_get_player_index(joystick &Joystick) int
fn joystick_get_product(joystick &Joystick) u16
fn joystick_get_product_version(joystick &Joystick) u16
fn joystick_get_serial(joystick &Joystick) &char
fn joystick_get_type(joystick &Joystick) JoystickType
fn joystick_get_vendor(joystick &Joystick) u16
fn joystick_has_led(joystick &Joystick) bool
fn joystick_has_rumble(joystick &Joystick) bool
fn joystick_has_rumble_triggers(joystick &Joystick) bool
fn joystick_instance_id(joystick &Joystick) JoystickID
fn joystick_is_haptic(joystick &Joystick) int
fn joystick_is_virtual(device_index int) bool
fn joystick_name(joystick &Joystick) &char
fn joystick_name_for_index(device_index int) &char
fn joystick_num_axes(joystick &Joystick) int
fn joystick_num_balls(joystick &Joystick) int
fn joystick_num_buttons(joystick &Joystick) int
fn joystick_num_hats(joystick &Joystick) int
fn joystick_open(device_index int) &Joystick
fn joystick_path(joystick &Joystick) &char
fn joystick_path_for_index(device_index int) &char
fn joystick_rumble(joystick &Joystick, low_frequency_rumble u16, high_frequency_rumble u16, duration_ms u32) int
fn joystick_rumble_triggers(joystick &Joystick, left_rumble u16, right_rumble u16, duration_ms u32) int
fn joystick_send_effect(joystick &Joystick, const_data voidptr, size int) int
fn joystick_set_led(joystick &Joystick, red u8, green u8, blue u8) int
fn joystick_set_player_index(joystick &Joystick, player_index int)
fn joystick_set_virtual_axis(joystick &Joystick, axis int, value i16) int
fn joystick_set_virtual_button(joystick &Joystick, button int, value u8) int
fn joystick_set_virtual_hat(joystick &C.SDL_Joystick, hat int, value u8) int
fn joystick_update()
fn linux_set_thread_priority(thread_id i64, priority int) int
fn linux_set_thread_priority_and_policy(thread_id i64, sdl_priority int, sched_policy int) int
fn lltoa(value i64, str &char, radix int) &char
fn load_bmp(path &char) &Surface
fn load_bmp_rw(src &RWops, freesrc int) &Surface
fn load_dollar_templates(touch_id TouchID, src &RWops) int
fn load_file(file &char, datasize &usize) voidptr
fn load_file_rw(src &RWops, datasize &usize, freesrc int) voidptr
fn load_function(handle voidptr, const_name &char) voidptr
fn load_object(sofile &char) voidptr
fn load_wav(file &char, spec &AudioSpec, audio_buf &&u8, audio_len &u32) &AudioSpec
fn load_wav_rw(src &RWops, freesrc int, spec &AudioSpec, audio_buf &&u8, audio_len &u32) &AudioSpec
fn lock_audio()
fn lock_audio_device(dev AudioDeviceID)
fn lock_joysticks()
fn lock_mutex(mutex &Mutex) int
fn lock_sensors()
fn lock_surface(surface &Surface) int
fn lock_texture(texture &Texture, const_rect &Rect, pixels &voidptr, pitch &int) int
fn lock_texture_to_surface(texture &Texture, const_rect &Rect, surface &&Surface) int
fn log(x f64) f64
fn log10(x f64) f64
fn log10f(x f32) f32
fn log_get_output_function(callback &LogOutputFunction, userdata voidptr)
fn log_get_priority(category int) LogPriority
fn log_message_v(category int, priority LogPriority, const_fmt &char, ap C.va_list)
fn log_reset_priorities()
fn log_set_all_priority(priority LogPriority)
fn log_set_output_function(callback LogOutputFunction, userdata voidptr)
fn log_set_priority(category int, priority LogPriority)
fn logf(x f32) f32
fn lower_blit(src &Surface, srcrect &Rect, dst &Surface, dstrect &Rect) int
fn lower_blit_scaled(src &Surface, srcrect &Rect, dst &Surface, dstrect &Rect) int
fn lround(x f64) int
fn lroundf(x f32) int
fn ltoa(value int, str &char, radix int) &char
fn malloc(size usize) voidptr
fn map_rgb(format &PixelFormat, r u8, g u8, b u8) u32
fn map_rgba(format &PixelFormat, r u8, g u8, b u8, a u8) u32
fn masks_to_pixel_format_enum(bpp int, rmask u32, gmask u32, bmask u32, amask u32) Format
fn maximize_window(window &Window)
fn memcmp(const_s1 voidptr, const_s2 voidptr, len usize) int
fn memory_barrier_acquire_function()
fn memory_barrier_release_function()
fn metal_create_view(window &Window) MetalView
fn metal_destroy_view(view MetalView)
fn metal_get_drawable_size(window &Window, w &int, h &int)
fn metal_get_layer(view MetalView) voidptr
fn minimize_window(window &Window)
fn mix_audio(dst &u8, const_src &u8, len u32, volume int)
fn mix_audio_format(dst &u8, const_src &u8, format AudioFormat, len u32, volume int)
fn mouse_is_haptic() int
fn new_audio_stream(const_src_format AudioFormat, const_src_channels u8, const_src_rate int, const_dst_format AudioFormat, const_dst_channels u8, const_dst_rate int) &AudioStream
fn num_haptics() int
fn num_joysticks() int
fn num_sensors() int
fn on_application_did_become_active()
fn on_application_did_enter_background()
fn on_application_did_receive_memory_warning()
fn on_application_will_enter_foreground()
fn on_application_will_resign_active()
fn on_application_will_terminate()
fn open_audio(desired &AudioSpec, obtained &AudioSpec) int
fn open_audio_device(const_device &char, iscapture int, const_desired &AudioSpec, obtained &AudioSpec, allowed_changes int) AudioDeviceID
fn open_url(url &char) int
fn pause_audio(pause_on int)
fn pause_audio_device(dev AudioDeviceID, pause_on int)
fn peep_events(events &Event, numevents int, action EventAction, min_type u32, max_type u32) int
fn pixel_format_enum_to_masks(format Format, bpp &int, rmask &u32, gmask &u32, bmask &u32, amask &u32) bool
fn point_in_frect(const_p &FPoint, const_r &FRect) bool
fn point_in_rect(const_p &Point, const_r &Rect) bool
fn poll_event(event &Event) int
fn pow(x f64, y f64) f64
fn powf(x f32, y f32) f32
fn premultiply_alpha(width int, height int, src_format u32, const_src voidptr, src_pitch int, dst_format u32, dst voidptr, dst_pitch int) int
fn pump_events()
fn push_event(event &Event) int
fn qsort(base voidptr, nmemb usize, size usize, compare QSortCompare)
fn query_texture(texture &Texture, format &u32, access &int, w &int, h &int) int
fn queue_audio(dev AudioDeviceID, const_data voidptr, len u32) int
fn quit()
fn quit_requested() bool
fn quit_sub_system(flags u32)
fn raise_window(window &Window)
fn read_be16(src &RWops) u16
fn read_be32(src &RWops) u32
fn read_be64(src &RWops) u64
fn read_le16(src &RWops) u16
fn read_le32(src &RWops) u32
fn read_le64(src &RWops) u64
fn read_u8(src &RWops) u8
fn realloc(mem voidptr, size usize) voidptr
fn record_gesture(touch_id TouchID) int
fn rect_empty(r &Rect) bool
fn rect_equals(const_a &Rect, const_b &Rect) bool
fn register_events(numevents int) u32
fn remove_timer(id TimerID) bool
fn render_clear(renderer &Renderer) int
fn render_copy(renderer &Renderer, texture &Texture, const_srcrect &Rect, const_dstrect &Rect) int
fn render_copy_ex(renderer &Renderer, texture &Texture, const_srcrect &Rect, const_dstrect &Rect, const_angle f64, const_center &Point, const_flip RendererFlip) int
fn render_copy_ex_f(renderer &Renderer, texture &Texture, const_srcrect &Rect, const_dstrect &FRect, const_angle f64, const_center &FPoint, const_flip RendererFlip) int
fn render_copy_f(renderer &Renderer, texture &Texture, const_srcrect &Rect, const_dstrect &FRect) int
fn render_draw_line(renderer &Renderer, x1 int, y1 int, x2 int, y2 int) int
fn render_draw_line_f(renderer &Renderer, x1 f32, y1 f32, x2 f32, y2 f32) int
fn render_draw_lines(renderer &Renderer, const_points &Point, count int) int
fn render_draw_lines_f(renderer &Renderer, const_points &FPoint, count int) int
fn render_draw_point(renderer &Renderer, x int, y int) int
fn render_draw_point_f(renderer &Renderer, x f32, y f32) int
fn render_draw_points(renderer &Renderer, const_points &Point, count int) int
fn render_draw_points_f(renderer &Renderer, const_points &FPoint, count int) int
fn render_draw_rect(renderer &Renderer, const_rect &Rect) int
fn render_draw_rect_f(renderer &Renderer, const_rect &FRect) int
fn render_draw_rects(renderer &Renderer, const_rects &Rect, count int) int
fn render_draw_rects_f(renderer &Renderer, const_rects &FRect, count int) int
fn render_fill_rect(renderer &Renderer, const_rect &Rect) int
fn render_fill_rect_f(renderer &Renderer, const_rect &FRect) int
fn render_fill_rects(renderer &Renderer, const_rects &Rect, count int) int
fn render_fill_rects_f(renderer &Renderer, const_rects &FRect, count int) int
fn render_flush(renderer &Renderer) int
fn render_geometry(renderer &Renderer, texture &Texture, const_vertices &Vertex, num_vertices int, const_indices &int, num_indices int) int
fn render_geometry_raw(renderer &Renderer, texture &Texture, const_xy &f32, xy_stride int, const_color &Color, color_stride int, const_uv &f32, uv_stride int, num_vertices int, const_indices voidptr, num_indices int, size_indices int) int
fn render_get_clip_rect(renderer &Renderer, rect &Rect)
fn render_get_integer_scale(renderer &Renderer) bool
fn render_get_logical_size(renderer &Renderer, w &int, h &int)
fn render_get_metal_command_encoder(renderer &Renderer) voidptr
fn render_get_metal_layer(renderer &Renderer) voidptr
fn render_get_scale(renderer &Renderer, scale_x &f32, scale_y &f32)
fn render_get_viewport(renderer &Renderer, rect &Rect)
fn render_get_window(renderer &Renderer) &Window
fn render_is_clip_enabled(renderer &Renderer) bool
fn render_logical_to_window(renderer &Renderer, logical_x f32, logical_y f32, window_x &int, window_y &int)
fn render_present(renderer &Renderer)
fn render_read_pixels(renderer &Renderer, const_rect &Rect, format u32, pixels voidptr, pitch int) int
fn render_set_clip_rect(renderer &Renderer, const_rect &Rect) int
fn render_set_integer_scale(renderer &Renderer, enable bool) int
fn render_set_logical_size(renderer &Renderer, w int, h int) int
fn render_set_scale(renderer &Renderer, scale_x f32, scale_y f32) int
fn render_set_v_sync(renderer &Renderer, vsync int) int
fn render_set_viewport(renderer &Renderer, const_rect &Rect) int
fn render_set_vsync(renderer &Renderer, vsync int) int
fn render_target_supported(renderer &Renderer) bool
fn render_window_to_logical(renderer &Renderer, window_x int, window_y int, logical_x &f32, logical_y &f32)
fn reset_hint(const_name &char) bool
fn reset_hints()
fn reset_keyboard()
fn restore_window(window &Window)
fn round(x f64) f64
fn roundf(x f32) f32
fn rw_close(context &RWops) int
fn rw_from_const_mem(mem voidptr, size int) &RWops
fn rw_from_file(const_file &char, const_mode &char) &RWops
fn rw_from_fp(fp voidptr, autoclose bool) &RWops
fn rw_from_mem(mem voidptr, size int) &RWops
fn rw_read(context &RWops, ptr voidptr, size usize, maxnum usize) usize
fn rw_seek(context &RWops, offset i64, whence int) i64
fn rw_size(context &RWops) i64
fn rw_tell(context &RWops) i64
fn rw_write(context &RWops, ptr voidptr, size usize, num usize) usize
fn save_all_dollar_templates(dst &RWops) int
fn save_bmp(surface &Surface, path &char)
fn save_bmp_rw(surface &Surface, dst &RWops, freedst int) int
fn save_dollar_template(gesture_id GestureID, dst &RWops) int
fn scalbn(x f64, n int) f64
fn scalbnf(x f32, n int) f32
fn scancode_to_keycode(scancode Scancode) Keycode
fn sem_post(sem &Sem) int
fn sem_try_wait(sem &Sem) int
fn sem_value(sem &Sem) u32
fn sem_wait(sem &Sem) int
fn sem_wait_timeout(sem &Sem, timeout u32) int
fn sensor_close(sensor &Sensor)
fn sensor_from_instance_id(instance_id SensorID) &Sensor
fn sensor_get_data(sensor &Sensor, data &f32, num_values int) int
fn sensor_get_data_with_timestamp(sensor &Sensor, timestamp &u64, data &f32, num_values int) int
fn sensor_get_device_instance_id(device_index int) SensorID
fn sensor_get_device_name(device_index int) &char
fn sensor_get_device_non_portable_type(device_index int) int
fn sensor_get_device_type(device_index int) SensorType
fn sensor_get_instance_id(sensor &Sensor) SensorID
fn sensor_get_name(sensor &Sensor) &char
fn sensor_get_non_portable_type(sensor &Sensor) int
fn sensor_get_type(sensor &Sensor) SensorType
fn sensor_open(device_index int) &Sensor
fn sensor_update()
fn set_clip_rect(surface &Surface, const_rect &Rect) bool
fn set_clipboard_text(text &char) int
fn set_color_key(surface &Surface, flag int, key u32) int
fn set_cursor(cursor &Cursor)
fn set_event_filter(filter EventFilter, userdata voidptr)
fn set_hint(const_name &char, const_value &char) bool
fn set_hint_with_priority(const_name &char, const_value &char, priority HintPriority) bool
fn set_main_ready()
fn set_mod_state(modstate Keymod)
fn set_palette_colors(palette &Palette, const_colors &Color, firstcolor int, nconst_colors int) int
fn set_pixel_format_palette(format &PixelFormat, palette &Palette) int
fn set_primary_selection_text(const_text &char) int
fn set_relative_mouse_mode(enabled bool) int
fn set_render_draw_blend_mode(renderer &Renderer, blend_mode BlendMode) int
fn set_render_draw_color(renderer &Renderer, r u8, g u8, b u8, a u8) int
fn set_render_target(renderer &Renderer, texture &Texture) int
fn set_surface_alpha_mod(surface &Surface, alpha u8) int
fn set_surface_blend_mode(surface &Surface, blend_mode BlendMode) int
fn set_surface_color_mod(surface &Surface, r u8, g u8, b u8) int
fn set_surface_palette(surface &Surface, palette &Palette) int
fn set_surface_rle(surface &Surface, flag int) int
fn set_text_input_rect(const_rect &Rect)
fn set_texture_alpha_mod(texture &Texture, alpha u8) int
fn set_texture_blend_mode(texture &Texture, blend_mode BlendMode) int
fn set_texture_color_mod(texture &Texture, r u8, g u8, b u8) int
fn set_texture_scale_mode(texture &Texture, scale_mode ScaleMode) int
fn set_texture_user_data(texture &Texture, userdata voidptr) int
fn set_thread_priority(priority ThreadPriority) int
fn set_window_always_on_top(window &C.SDL_Window, on_top bool)
fn set_window_bordered(window &Window, bordered bool)
fn set_window_brightness(window &Window, brightness f32) int
fn set_window_data(window &Window, const_name &char, userdata voidptr) voidptr
fn set_window_display_mode(window &Window, const_mode &DisplayMode) int
fn set_window_fullscreen(window &Window, flags u32) int
fn set_window_gamma_ramp(window &Window, const_red &u16, const_green &u16, const_blue &u16) int
fn set_window_grab(window &Window, grabbed bool)
fn set_window_hit_test(window &Window, callback HitTest, callback_data voidptr) int
fn set_window_icon(window &Window, icon &Surface)
fn set_window_input_focus(window &Window) int
fn set_window_keyboard_grab(window &Window, grabbed bool)
fn set_window_maximum_size(window &Window, max_w int, max_h int)
fn set_window_minimum_size(window &Window, min_w int, min_h int)
fn set_window_modal_for(modal_window &Window, parent_window &Window) int
fn set_window_mouse_grab(window &Window, grabbed bool)
fn set_window_mouse_rect(window &Window, const_rect &Rect) int
fn set_window_opacity(window &Window, opacity f32) int
fn set_window_position(window &Window, x int, y int)
fn set_window_resizable(window &Window, resizable bool)
fn set_window_shape(window &Window, shape &Surface, shape_mode &WindowShapeMode) int
fn set_window_size(window &Window, w int, h int)
fn set_window_title(window &Window, const_title &char)
fn set_yuv_conversion_mode(mode YUVConversionMode)
fn setenv(const_name &char, const_value &char, overwrite int) int
fn shapemodealpha(mode WindowShapeModeFlag) bool
fn show_cursor(toggle int) int
fn show_message_box(messageboxdata &MessageBoxData, buttonid &int) int
fn show_simple_message_box(flags u32, const_title &char, const_message &char, window &Window) int
fn show_window(window &Window)
fn simd_alloc(len usize) voidptr
fn simd_free(ptr voidptr)
fn simd_get_alignment() usize
fn simd_realloc(mem voidptr, len usize) voidptr
fn sin(x f64) f64
fn sinf(x f32) f32
fn size_add_overflow(a usize, b usize, ret &usize) int
fn size_mul_overflow(a usize, b usize, ret &usize) int
fn soft_stretch(src &Surface, const_srcrect &Rect, dst &Surface, const_dstrect &Rect) int
fn soft_stretch_linear(src &Surface, const_srcrect &Rect, dst &Surface, const_dstrect &Rect) int
fn sqrt(x f64) f64
fn sqrtf(x f32) f32
fn start_text_input()
fn stop_text_input()
fn strcasecmp(const_str1 &char, const_str2 &char) int
fn strcasestr(const_haystack &char, const_needle &char) &char
fn strchr(str &char, c int) &char
fn strcmp(const_str1 &char, const_str2 &char) int
fn strdup(str &char) &char
fn strlen(str &char) usize
fn strlwr(str &char) &char
fn strncasecmp(const_str1 &char, const_str2 &char, len usize) int
fn strncmp(const_str1 &char, const_str2 &char, maxlen usize) int
fn strrchr(str &char, c int) &char
fn strrev(str &char) &char
fn strstr(const_haystack &char, const_needle &char) &char
fn strtod(str &char, endp &&char) f64
fn strtokr(s1 &char, const_s2 &char, saveptr &&char) &char
fn strtol(str &char, endp &&char, base int) int
fn strtoll(str &char, endp &&char, base int) i64
fn strtoul(str &char, endp &&char, base int) u32
fn strtoull(str &char, endp &&char, base int) u64
fn strupr(str &char) &char
fn swap32(x u32) u32
fn swap64(x u64) u64
fn swap_float(x f32) f32
fn tan(x f64) f64
fn tanf(x f32) f32
fn thread_id() ThreadID
fn ticks_passed(a u32, b u32) bool
fn tls_cleanup()
fn tls_create() TLSID
fn tls_get(id TLSID) voidptr
fn tls_set(id TLSID, const_value voidptr, destructor TLSDestructorCallback) int
fn tolower(x int) int
fn toupper(x int) int
fn trunc(x f64) f64
fn truncf(x f32) f32
fn try_lock_mutex(mutex &Mutex) int
fn uitoa(value u32, str &char, radix int) &char
fn ulltoa(value u64, str &char, radix int) &char
fn ultoa(value u32, str &char, radix int) &char
fn union_frect(const_a &FRect, const_b &FRect, result &FRect)
fn union_rect(const_a &Rect, const_b &Rect, result &Rect)
fn unload_object(handle voidptr)
fn unlock_audio()
fn unlock_audio_device(dev AudioDeviceID)
fn unlock_joysticks()
fn unlock_mutex(mutex &Mutex) int
fn unlock_sensors()
fn unlock_surface(surface &Surface)
fn unlock_texture(texture &Texture)
fn update_nv_texture(texture &C.SDL_Texture, const_rect &Rect, const_yplane &u8, ypitch int, const_u_vplane &u8, u_vpitch int) int
fn update_texture(texture &Texture, const_rect &Rect, const_pixels voidptr, pitch int) int
fn update_window_surface(window &Window) int
fn update_window_surface_rects(window &Window, const_rects &Rect, numconst_rects int) int
fn update_yuv_texture(texture &Texture, const_rect &Rect, const_yplane &u8, ypitch int, const_uplane &u8, upitch int, const_vplane &u8, vpitch int) int
fn upper_blit(src &Surface, const_srcrect &Rect, dst &Surface, dstrect &Rect) int
fn upper_blit_scaled(src &Surface, const_srcrect &Rect, dst &Surface, dstrect &Rect) int
fn utf8strlen(str &char) usize
fn utf8strnlen(const_str &char, bytes usize) usize
fn version(mut ver Version)
fn video_init(driver_name &char) int
fn video_quit()
fn vmod_version() string
fn vsscanf(const_text &char, const_fmt &char, ap C.va_list) int
fn wait_event(event &Event) int
fn wait_event_timeout(event &Event, timeout int) int
fn wait_thread(thrd &Thread, status &int)
fn warp_mouse_global(x int, y int) int
fn warp_mouse_in_window(window &Window, x int, y int)
fn was_init(flags u32) u32
fn windowpos_centered_display(x u32) u32
fn windowpos_iscentered(x u32) bool
fn windowpos_isundefined(x u32) bool
fn windowpos_undefined_display(x u32) u32
fn write_be16(dst &RWops, value u16) usize
fn write_be32(dst &RWops, value u32) usize
fn write_be64(dst &RWops, value u64) usize
fn write_le16(dst &RWops, value u16) usize
fn write_le32(dst &RWops, value u32) usize
fn write_le64(dst &RWops, value u64) usize
fn write_u8(dst &RWops, value u8) usize
type AtomicT = C.SDL_atomic_t
type AudioCVT = C.SDL_AudioCVT
type AudioCallback = fn (userdata voidptr, stream &u8, len int)
type AudioDeviceEvent = C.SDL_AudioDeviceEvent
type AudioDeviceID = u32
type AudioFilter = fn (cvt &AudioCVT, format AudioFormat)
type AudioFormat = u16
type AudioSpec = C.SDL_AudioSpec
type AudioStream = C.SDL_AudioStream
type BlitCall = fn (src &Surface, srcrect &Rect, dst &Surface, dstrect &Rect) int
type BlitMap = C.SDL_BlitMap
type Color = C.SDL_Color
type CommonEvent = C.SDL_CommonEvent
type Cond = C.SDL_cond
type ControllerAxisEvent = C.SDL_ControllerAxisEvent
type ControllerButtonEvent = C.SDL_ControllerButtonEvent
type ControllerDeviceEvent = C.SDL_ControllerDeviceEvent
type ControllerSensorEvent = C.SDL_ControllerSensorEvent
type ControllerTouchpadEvent = C.SDL_ControllerTouchpadEvent
type Cursor = C.SDL_Cursor
type DisplayEvent = C.SDL_DisplayEvent
type DisplayMode = C.SDL_DisplayMode
type DollarGestureEvent = C.SDL_DollarGestureEvent
type DropEvent = C.SDL_DropEvent
type Event = C.SDL_Event
type EventFilter = fn (userdata voidptr, event &Event)
type FPoint = C.SDL_FPoint
type FRect = C.SDL_FRect
type Finger = C.SDL_Finger
type FingerID = i64
type GLContext = voidptr
type GUID = C.SDL_GUID
type GameController = C.SDL_GameController
type GameControllerButtonBind = C.SDL_GameControllerButtonBind
type GestureID = i64
type Haptic = C.SDL_Haptic
type HapticCondition = C.SDL_HapticCondition
type HapticConstant = C.SDL_HapticConstant
type HapticCustom = C.SDL_HapticCustom
type HapticDirection = C.SDL_HapticDirection
type HapticEffect = C.SDL_HapticEffect
type HapticLeftRight = C.SDL_HapticLeftRight
type HapticPeriodic = C.SDL_HapticPeriodic
type HapticRamp = C.SDL_HapticRamp
type HidDevice = C.SDL_hid_device
type HidDeviceInfo = C.SDL_hid_device_info
type HintCallback = fn (userdata voidptr, const_name &char, const_old_value &char, const_new_value &char)
type HitTest = fn (win &Window, const_area &Point, data voidptr) HitTestResult
type IconvT = C.SDL_iconv_t
type JoyAxisEvent = C.SDL_JoyAxisEvent
type JoyBallEvent = C.SDL_JoyBallEvent
type JoyBatteryEvent = C.SDL_JoyBatteryEvent
type JoyButtonEvent = C.SDL_JoyButtonEvent
type JoyDeviceEvent = C.SDL_JoyDeviceEvent
type JoyHatEvent = C.SDL_JoyHatEvent
type Joystick = C.SDL_Joystick
type JoystickGUID = C.SDL_GUID
type JoystickID = i32
type KeyboardEvent = C.SDL_KeyboardEvent
type Keycode = int
type Keysym = C.SDL_Keysym
type Locale = C.SDL_Locale
type LogOutputFunction = fn (userdata voidptr, category int, priority LogPriority, const_message &char)
type MainFunc = fn (argc int, argv &&char) int
type MessageBoxButtonData = C.SDL_MessageBoxButtonData
type MessageBoxColor = C.SDL_MessageBoxColor
type MessageBoxColorScheme = C.SDL_MessageBoxColorScheme
type MessageBoxData = C.SDL_MessageBoxData
type MetalView = voidptr
type MouseButtonEvent = C.SDL_MouseButtonEvent
type MouseMotionEvent = C.SDL_MouseMotionEvent
type MouseWheelEvent = C.SDL_MouseWheelEvent
type MultiGestureEvent = C.SDL_MultiGestureEvent
type Mutex = C.SDL_mutex
type Palette = C.SDL_Palette
type PixelFormat = C.SDL_PixelFormat
type Point = C.SDL_Point
type QSortCompare = fn (const_a voidptr, const_b voidptr) int
type QuitEvent = C.SDL_QuitEvent
type RWops = C.SDL_RWops
fn (rwo &RWops) size() i64
fn (rwo &RWops) seek(offset i64, whence int) i64
fn (rwo &RWops) read(ptr voidptr, size usize, maxnum usize) usize
fn (rwo &RWops) write(ptr voidptr, size usize, num usize) usize
fn (rwo &RWops) close() int
type Rect = C.SDL_Rect
type Renderer = C.SDL_Renderer
type RendererInfo = C.SDL_RendererInfo
type Sem = C.SDL_sem
type Sensor = C.SDL_Sensor
type SensorEvent = C.SDL_SensorEvent
type SensorID = int
type SpinLock = int
type Surface = C.SDL_Surface
type SysWMEvent = C.SDL_SysWMEvent
type SysWMmsg = C.SDL_SysWMmsg
type TLSDestructorCallback = fn (voidptr)
type TLSID = u32
type TextEditingEvent = C.SDL_TextEditingEvent
type TextEditingExtEvent = C.SDL_TextEditingExtEvent
type TextInputEvent = C.SDL_TextInputEvent
type Texture = C.SDL_Texture
type Thread = C.SDL_Thread
type ThreadFunction = fn (data voidptr) int
type ThreadID = u32
type TimerCallback = fn (interval u32, param voidptr) u32
type TimerID = int
type TouchFingerEvent = C.SDL_TouchFingerEvent
type TouchID = i64
type UserEvent = C.SDL_UserEvent
type Version = C.SDL_version
type Vertex = C.SDL_Vertex
type VirtualJoystickDesc = C.SDL_VirtualJoystickDesc
type Window = C.SDL_Window
type WindowEvent = C.SDL_WindowEvent
type WindowShapeMode = C.SDL_WindowShapeMode
type WindowShapeParams = C.SDL_WindowShapeParams
enum ArrayOrder {
	@none = C.SDL_ARRAYORDER_NONE
	rgb   = C.SDL_ARRAYORDER_RGB
	rgba  = C.SDL_ARRAYORDER_RGBA
	argb  = C.SDL_ARRAYORDER_ARGB
	bgr   = C.SDL_ARRAYORDER_BGR
	bgra  = C.SDL_ARRAYORDER_BGRA
	abgr  = C.SDL_ARRAYORDER_ABGR
}
enum AudioStatus {
	audio_stopped = C.SDL_AUDIO_STOPPED // 0
	audio_playing = C.SDL_AUDIO_PLAYING
	audio_paused  = C.SDL_AUDIO_PAUSED
}
enum BitmapOrder {
	@none      = C.SDL_BITMAPORDER_NONE
	order_4321 = C.SDL_BITMAPORDER_4321
	order_1234 = C.SDL_BITMAPORDER_1234
}
enum BlendFactor {
	zero                = C.SDL_BLENDFACTOR_ZERO                // 0x1, 0, 0, 0, 0
	one                 = C.SDL_BLENDFACTOR_ONE                 // 0x2, 1, 1, 1, 1
	src_color           = C.SDL_BLENDFACTOR_SRC_COLOR           // 0x3, srcR, srcG, srcB, srcA
	one_minus_src_color = C.SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR // 0x4, 1-srcR, 1-srcG, 1-srcB, 1-srcA
	src_alpha           = C.SDL_BLENDFACTOR_SRC_ALPHA           // 0x5, srcA, srcA, srcA, srcA
	one_minus_src_alpha = C.SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA // 0x6, 1-srcA, 1-srcA, 1-srcA, 1-srcA
	dst_color           = C.SDL_BLENDFACTOR_DST_COLOR           // 0x7, dstR, dstG, dstB, dstA
	one_minus_dst_color = C.SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR // 0x8, 1-dstR, 1-dstG, 1-dstB, 1-dstA
	dst_alpha           = C.SDL_BLENDFACTOR_DST_ALPHA           // 0x9, dstA, dstA, dstA, dstA
	one_minus_dst_alpha = C.SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA // 0xA, 1-dstA, 1-dstA, 1-dstA, 1-dstA
}
enum BlendMode {
	@none   = C.SDL_BLENDMODE_NONE    // 0x00000000, no blending       dstRGBA = srcRGBA
	blend   = C.SDL_BLENDMODE_BLEND   // 0x00000001, alpha blending    dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA)) dstA = srcA + (dstA * (1-srcA))
	add     = C.SDL_BLENDMODE_ADD     // 0x00000002, additive blending   dstRGB = (srcRGB * srcA) + dstRGB dstA = dstA
	mod     = C.SDL_BLENDMODE_MOD     // 0x00000004, color modulate      dstRGB = srcRGB * dstRGB dstA = dstA
	mul     = C.SDL_BLENDMODE_MUL     // 0x00000008, color multiply dstRGB = (srcRGB * dstRGB) + (dstRGB * (1-srcA)) dstA = dstA
	invalid = C.SDL_BLENDMODE_INVALID // 0x7FFFFFFF
}
enum BlendOperation {
	add          = C.SDL_BLENDOPERATION_ADD          // 0x1, dst + src: supported by all renderers
	subtract     = C.SDL_BLENDOPERATION_SUBTRACT     // 0x2, src - dst : supported by D3D9, D3D11, OpenGL, OpenGLES
	rev_subtract = C.SDL_BLENDOPERATION_REV_SUBTRACT // 0x3, dst - src : supported by D3D9, D3D11, OpenGL, OpenGLES
	minimum      = C.SDL_BLENDOPERATION_MINIMUM      // 0x4, min(dst, src) : supported by D3D9, D3D11
	maximum      = C.SDL_BLENDOPERATION_MAXIMUM      // 0x5 max(dst, src) : supported by D3D9, D3D11
}
enum DisplayEventID {
	@none        = C.SDL_DISPLAYEVENT_NONE         // Never used
	orientation  = C.SDL_DISPLAYEVENT_ORIENTATION  // Display orientation has changed to data1
	connected    = C.SDL_DISPLAYEVENT_CONNECTED    // Display has been added to the system
	disconnected = C.SDL_DISPLAYEVENT_DISCONNECTED // Display has been removed from the system
	moved        = C.SDL_DISPLAYEVENT_MOVED        // Display has changed position
}
enum DisplayOrientation {
	unknown           = C.SDL_ORIENTATION_UNKNOWN           // The display orientation can't be determined
	landscape         = C.SDL_ORIENTATION_LANDSCAPE         // The display is in landscape mode, with the right side up, relative to portrait mode
	landscape_flipped = C.SDL_ORIENTATION_LANDSCAPE_FLIPPED // The display is in landscape mode, with the left side up, relative to portrait mode
	portrait          = C.SDL_ORIENTATION_PORTRAIT          // The display is in portrait mode
	portrait_flipped  = C.SDL_ORIENTATION_PORTRAIT_FLIPPED  // The display is in portrait mode, upside down
}
enum ErrorCode {
	enomem      = C.SDL_ENOMEM
	efread      = C.SDL_EFREAD
	efwrite     = C.SDL_EFWRITE
	efseek      = C.SDL_EFSEEK
	unsupported = C.SDL_UNSUPPORTED
	lasterror   = C.SDL_LASTERROR
}
enum EventAction {
	addevent  = C.SDL_ADDEVENT
	peekevent = C.SDL_PEEKEVENT
	getevent  = C.SDL_GETEVENT
}
enum EventType {
	firstevent = C.SDL_FIRSTEVENT // Unused (do not remove)
	quit       = C.SDL_QUIT       // 0x100 User-requested quit
	// These application events have special meaning on iOS, see README-ios.md in SDL for details
	// The application is being terminated by the OS
	// Called on iOS in applicationWillTerminate()
	// Called on Android in onDestroy()
	app_terminating = C.SDL_APP_TERMINATING
	// The application is low on memory, free memory if possible.
	// Called on iOS in applicationDidReceiveMemoryWarning()
	// Called on Android in onLowMemory()
	app_lowmemory = C.SDL_APP_LOWMEMORY
	// The application is about to enter the background
	// Called on iOS in applicationWillResignActive()
	// Called on Android in onPause()
	app_willenterbackground = C.SDL_APP_WILLENTERBACKGROUND
	// The application did enter the background and may not get CPU for some time
	// Called on iOS in applicationDidEnterBackground()
	// Called on Android in onPause()
	app_didenterbackground = C.SDL_APP_DIDENTERBACKGROUND
	// The application is about to enter the foreground
	// Called on iOS in applicationWillEnterForeground()
	// Called on Android in onResume()
	app_willenterforeground = C.SDL_APP_WILLENTERFOREGROUND
	// The application is now interactive
	// Called on iOS in applicationDidBecomeActive()
	// Called on Android in onResume()
	app_didenterforeground = C.SDL_APP_DIDENTERFOREGROUND
	localechanged          = C.SDL_LOCALECHANGED // The user's locale preferences have changed.
	// Display events
	displayevent = C.SDL_DISPLAYEVENT // 0x150 Display state change
	// Window events
	windowevent = C.SDL_WINDOWEVENT // 0x200 Window state change
	syswmevent  = C.SDL_SYSWMEVENT
	// Keyboard events
	keydown         = C.SDL_KEYDOWN         // 0x300, Key pressed
	keyup           = C.SDL_KEYUP           // Key released
	textediting     = C.SDL_TEXTEDITING     // Keyboard text editing (composition)
	textinput       = C.SDL_TEXTINPUT       // Keyboard text input
	keymapchanged   = C.SDL_KEYMAPCHANGED   // Keymap changed due to a system event such as an input language or keyboard layout change.
	textediting_ext = C.SDL_TEXTEDITING_EXT // Extended keyboard text editing (composition)
	// Mouse events
	mousemotion     = C.SDL_MOUSEMOTION     // 0x400, Mouse moved
	mousebuttondown = C.SDL_MOUSEBUTTONDOWN // Mouse button pressed
	mousebuttonup   = C.SDL_MOUSEBUTTONUP   // Mouse button released
	mousewheel      = C.SDL_MOUSEWHEEL      // Mouse wheel motion
	// Joystick events
	joyaxismotion     = C.SDL_JOYAXISMOTION     // 0x600, Joystick axis motion
	joyballmotion     = C.SDL_JOYBALLMOTION     // Joystick trackball motion
	joyhatmotion      = C.SDL_JOYHATMOTION      // Joystick hat position change
	joybuttondown     = C.SDL_JOYBUTTONDOWN     // Joystick button pressed
	joybuttonup       = C.SDL_JOYBUTTONUP       // Joystick button released
	joydeviceadded    = C.SDL_JOYDEVICEADDED    // A new joystick has been inserted into the system
	joydeviceremoved  = C.SDL_JOYDEVICEREMOVED  // An opened joystick has been removed
	joybatteryupdated = C.SDL_JOYBATTERYUPDATED // Joystick battery level change
	// Game controller events
	controlleraxismotion                       = C.SDL_CONTROLLERAXISMOTION     // 0x650, Game controller axis motion
	controllerbuttondown                       = C.SDL_CONTROLLERBUTTONDOWN     // Game controller button pressed
	controllerbuttonup                         = C.SDL_CONTROLLERBUTTONUP       // Game controller button released
	controllerdeviceadded                      = C.SDL_CONTROLLERDEVICEADDED    // A new Game controller has been inserted into the system
	controllerdeviceremoved                    = C.SDL_CONTROLLERDEVICEREMOVED  // An opened Game controller has been removed
	controllerdeviceremapped                   = C.SDL_CONTROLLERDEVICEREMAPPED // The controller mapping was updated
	controllertouchpaddown                     = C.SDL_CONTROLLERTOUCHPADDOWN   // Game controller touchpad was touched
	controllertouchpadmotion                   = C.SDL_CONTROLLERTOUCHPADMOTION // Game controller touchpad finger was moved
	controllertouchpadup                       = C.SDL_CONTROLLERTOUCHPADUP     // Game controller touchpad finger was lifted
	controllersensorupdate                     = C.SDL_CONTROLLERSENSORUPDATE   // Game controller sensor was updated
	controllerupdatecomplete_reserved_for_sdl3 = C.SDL_CONTROLLERUPDATECOMPLETE_RESERVED_FOR_SDL3
	controllersteamhandleupdated               = C.SDL_CONTROLLERSTEAMHANDLEUPDATED // Game controller Steam handle has changed
	// Touch events
	fingerdown   = C.SDL_FINGERDOWN // 0x700
	fingerup     = C.SDL_FINGERUP
	fingermotion = C.SDL_FINGERMOTION
	// Gesture events
	dollargesture = C.SDL_DOLLARGESTURE // 0x800
	dollarrecord  = C.SDL_DOLLARRECORD
	multigesture  = C.SDL_MULTIGESTURE
	// Clipboard events
	clipboardupdate = C.SDL_CLIPBOARDUPDATE // 0x900 The clipboard or primary selection changed
	// Drag and drop events
	dropfile     = C.SDL_DROPFILE     // 0x1000 The system requests a file open
	droptext     = C.SDL_DROPTEXT     // text/plain drag-and-drop event
	dropbegin    = C.SDL_DROPBEGIN    // A new set of drops is beginning (NULL filename)
	dropcomplete = C.SDL_DROPCOMPLETE // Current set of drops is now complete (NULL filename)
	// Audio hotplug events
	audiodeviceadded   = C.SDL_AUDIODEVICEADDED   // 0x1100 A new audio device is available
	audiodeviceremoved = C.SDL_AUDIODEVICEREMOVED // An audio device has been removed.
	// Sensor events
	sensorupdate = C.SDL_SENSORUPDATE // 0x1200 A sensor was updated
	// Render events
	render_targets_reset = C.SDL_RENDER_TARGETS_RESET // 0x2000 The render targets have been reset and their contents need to be updated
	render_device_reset  = C.SDL_RENDER_DEVICE_RESET  // The device has been reset and all textures need to be recreated
	// Internal events
	pollsentinel = C.SDL_POLLSENTINEL // 0x7F00, Signals the end of an event poll cycle
	// Events SDL_USEREVENT through SDL_LASTEVENT are for your use, and should be allocated with SDL_RegisterEvents()
	userevent = C.SDL_USEREVENT
	// This last event is only for bounding internal arrays
	lastevent = C.SDL_LASTEVENT // 0xFFFF
}
enum FlashOperation {
	cancel        = C.SDL_FLASH_CANCEL        // Cancel any window flash state
	briefly       = C.SDL_FLASH_BRIEFLY       // Flash the window briefly to get attention
	until_focused = C.SDL_FLASH_UNTIL_FOCUSED // Flash the window until it gets focus
}
enum Format {
	unknown      = C.SDL_PIXELFORMAT_UNKNOWN
	index1lsb    = C.SDL_PIXELFORMAT_INDEX1LSB
	index1msb    = C.SDL_PIXELFORMAT_INDEX1MSB
	index2lsb    = C.SDL_PIXELFORMAT_INDEX2LSB
	index2msb    = C.SDL_PIXELFORMAT_INDEX2MSB
	index4lsb    = C.SDL_PIXELFORMAT_INDEX4LSB
	index4msb    = C.SDL_PIXELFORMAT_INDEX4MSB
	index8       = C.SDL_PIXELFORMAT_INDEX8
	rgb332       = C.SDL_PIXELFORMAT_RGB332
	xrgb4444     = C.SDL_PIXELFORMAT_XRGB4444
	rgb444       = C.SDL_PIXELFORMAT_RGB444
	xbgr4444     = C.SDL_PIXELFORMAT_XBGR4444
	bgr444       = C.SDL_PIXELFORMAT_BGR444
	xrgb1555     = C.SDL_PIXELFORMAT_XRGB1555
	rgb555       = C.SDL_PIXELFORMAT_RGB555
	xbgr1555     = C.SDL_PIXELFORMAT_XBGR1555
	bgr555       = C.SDL_PIXELFORMAT_BGR555
	argb4444     = C.SDL_PIXELFORMAT_ARGB4444
	rgba4444     = C.SDL_PIXELFORMAT_RGBA4444
	abgr4444     = C.SDL_PIXELFORMAT_ABGR4444
	bgra4444     = C.SDL_PIXELFORMAT_BGRA4444
	argb1555     = C.SDL_PIXELFORMAT_ARGB1555
	rgba5551     = C.SDL_PIXELFORMAT_RGBA5551
	abgr1555     = C.SDL_PIXELFORMAT_ABGR1555
	bgra5551     = C.SDL_PIXELFORMAT_BGRA5551
	rgb565       = C.SDL_PIXELFORMAT_RGB565
	bgr565       = C.SDL_PIXELFORMAT_BGR565
	rgb24        = C.SDL_PIXELFORMAT_RGB24
	bgr24        = C.SDL_PIXELFORMAT_BGR24
	xrgb8888     = C.SDL_PIXELFORMAT_XRGB8888
	rgb888       = C.SDL_PIXELFORMAT_RGB888
	rgbx8888     = C.SDL_PIXELFORMAT_RGBX8888
	xbgr8888     = C.SDL_PIXELFORMAT_XBGR8888
	bgr888       = C.SDL_PIXELFORMAT_BGR888
	bgrx8888     = C.SDL_PIXELFORMAT_BGRX8888
	argb8888     = C.SDL_PIXELFORMAT_ARGB8888
	rgba8888     = C.SDL_PIXELFORMAT_RGBA8888
	abgr8888     = C.SDL_PIXELFORMAT_ABGR8888
	bgra8888     = C.SDL_PIXELFORMAT_BGRA8888
	argb2101010  = C.SDL_PIXELFORMAT_ARGB2101010
	rgba32       = C.SDL_PIXELFORMAT_RGBA32
	argb32       = C.SDL_PIXELFORMAT_ARGB32
	bgra32       = C.SDL_PIXELFORMAT_BGRA32
	abgr32       = C.SDL_PIXELFORMAT_ABGR32
	yv12         = C.SDL_PIXELFORMAT_YV12         // Planar mode: Y + V + U  (3 planes)
	iyuv         = C.SDL_PIXELFORMAT_IYUV         // Planar mode: Y + U + V  (3 planes)
	yuy2         = C.SDL_PIXELFORMAT_YUY2         // Packed mode: Y0+U0+Y1+V0 (1 plane)
	uyvy         = C.SDL_PIXELFORMAT_UYVY         // Packed mode: U0+Y0+V0+Y1 (1 plane)
	yvyu         = C.SDL_PIXELFORMAT_YVYU         // Packed mode: Y0+V0+Y1+U0 (1 plane)
	nv12         = C.SDL_PIXELFORMAT_NV12         // Planar mode: Y + U/V interleaved  (2 planes)
	nv21         = C.SDL_PIXELFORMAT_NV21         // Planar mode: Y + V/U interleaved  (2 planes)
	external_oes = C.SDL_PIXELFORMAT_EXTERNAL_OES // Android video texture format
}
enum GLContextResetNotification {
	no_notification = C.SDL_GL_CONTEXT_RESET_NO_NOTIFICATION // 0x0000
	lose_context    = C.SDL_GL_CONTEXT_RESET_LOSE_CONTEXT    // 0x0001
}
enum GLattr {
	red_size                   = C.SDL_GL_RED_SIZE                   // the minimum number of bits for the red channel of the color buffer; defaults to 3.
	green_size                 = C.SDL_GL_GREEN_SIZE                 // the minimum number of bits for the green channel of the color buffer; defaults to 3.
	blue_size                  = C.SDL_GL_BLUE_SIZE                  // the minimum number of bits for the blue channel of the color buffer; defaults to 2.
	alpha_size                 = C.SDL_GL_ALPHA_SIZE                 // the minimum number of bits for the alpha channel of the color buffer; defaults to 0.
	buffer_size                = C.SDL_GL_BUFFER_SIZE                // the minimum number of bits for frame buffer size; defaults to 0.
	doublebuffer               = C.SDL_GL_DOUBLEBUFFER               // whether the output is single or double buffered; defaults to double buffering on.
	depth_size                 = C.SDL_GL_DEPTH_SIZE                 // the minimum number of bits in the depth buffer; defaults to 16.
	stencil_size               = C.SDL_GL_STENCIL_SIZE               // the minimum number of bits in the stencil buffer; defaults to 0.
	accum_red_size             = C.SDL_GL_ACCUM_RED_SIZE             // the minimum number of bits for the red channel of the accumulation buffer; defaults to 0.
	accum_green_size           = C.SDL_GL_ACCUM_GREEN_SIZE           // the minimum number of bits for the green channel of the accumulation buffer; defaults to 0.
	accum_blue_size            = C.SDL_GL_ACCUM_BLUE_SIZE            // the minimum number of bits for the blue channel of the accumulation buffer; defaults to 0.
	accum_alpha_size           = C.SDL_GL_ACCUM_ALPHA_SIZE           // the minimum number of bits for the alpha channel of the accumulation buffer; defaults to 0.
	stereo                     = C.SDL_GL_STEREO                     // whether the output is stereo 3D; defaults to off.
	multisamplebuffers         = C.SDL_GL_MULTISAMPLEBUFFERS         // the number of buffers used for multisample anti-aliasing; defaults to 0.
	multisamplesamples         = C.SDL_GL_MULTISAMPLESAMPLES         // the number of samples used around the current pixel used for multisample anti-aliasing.
	accelerated_visual         = C.SDL_GL_ACCELERATED_VISUAL         // set to 1 to require hardware acceleration, set to 0 to force software rendering; defaults to allow either.
	retained_backing           = C.SDL_GL_RETAINED_BACKING           // not used (deprecated).
	context_major_version      = C.SDL_GL_CONTEXT_MAJOR_VERSION      // OpenGL context major version.
	context_minor_version      = C.SDL_GL_CONTEXT_MINOR_VERSION      // OpenGL context minor version.
	context_egl                = C.SDL_GL_CONTEXT_EGL                // deprecated: set SDL_GL_CONTEXT_PROFILE_MASK to SDL_GL_CONTEXT_PROFILE_ES to enable instead.
	context_flags              = C.SDL_GL_CONTEXT_FLAGS              // some combination of 0 or more of elements of the SDL_GLcontextFlag enumeration; defaults to 0.
	context_profile_mask       = C.SDL_GL_CONTEXT_PROFILE_MASK       // type of GL context (Core, Compatibility, ES). See SDL_GLprofile; default value depends on platform.
	share_with_current_context = C.SDL_GL_SHARE_WITH_CURRENT_CONTEXT // OpenGL context sharing; defaults to 0.
	framebuffer_srgb_capable   = C.SDL_GL_FRAMEBUFFER_SRGB_CAPABLE   // requests sRGB capable visual; defaults to 0. (>= SDL 2.0.1)
	context_release_behavior   = C.SDL_GL_CONTEXT_RELEASE_BEHAVIOR   // sets context the release behavior; defaults to 1. (>= SDL 2.0.4)
	context_reset_notification = C.SDL_GL_CONTEXT_RESET_NOTIFICATION
	context_no_error           = C.SDL_GL_CONTEXT_NO_ERROR
	floatbuffers               = C.SDL_GL_FLOATBUFFERS
}
enum GLcontextFlag {
	debug_flag              = C.SDL_GL_CONTEXT_DEBUG_FLAG              // 0x0001
	forward_compatible_flag = C.SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG // 0x0002
	robust_access_flag      = C.SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG      // 0x0004
	reset_isolation_flag    = C.SDL_GL_CONTEXT_RESET_ISOLATION_FLAG    // 0x0008
}
enum GLcontextReleaseFlag {
	@none = C.SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE  // 0x0000
	flush = C.SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH // 0x0001
}
enum GLprofile {
	core          = C.SDL_GL_CONTEXT_PROFILE_CORE          // 0x0001
	compatibility = C.SDL_GL_CONTEXT_PROFILE_COMPATIBILITY // 0x0002
	es            = C.SDL_GL_CONTEXT_PROFILE_ES            // 0x0004,  GLX_CONTEXT_ES2_PROFILE_BIT_EXT
}
enum GameControllerAxis {
	invalid      = C.SDL_CONTROLLER_AXIS_INVALID // -1
	leftx        = C.SDL_CONTROLLER_AXIS_LEFTX
	lefty        = C.SDL_CONTROLLER_AXIS_LEFTY
	rightx       = C.SDL_CONTROLLER_AXIS_RIGHTX
	righty       = C.SDL_CONTROLLER_AXIS_RIGHTY
	triggerleft  = C.SDL_CONTROLLER_AXIS_TRIGGERLEFT
	triggerright = C.SDL_CONTROLLER_AXIS_TRIGGERRIGHT
	max          = C.SDL_CONTROLLER_AXIS_MAX
}
enum GameControllerBindType {
	@none  = C.SDL_CONTROLLER_BINDTYPE_NONE // 0
	button = C.SDL_CONTROLLER_BINDTYPE_BUTTON
	axis   = C.SDL_CONTROLLER_BINDTYPE_AXIS
	hat    = C.SDL_CONTROLLER_BINDTYPE_HAT
}
enum GameControllerButton {
	invalid       = C.SDL_CONTROLLER_BUTTON_INVALID // -1
	a             = C.SDL_CONTROLLER_BUTTON_A
	b             = C.SDL_CONTROLLER_BUTTON_B
	x             = C.SDL_CONTROLLER_BUTTON_X
	y             = C.SDL_CONTROLLER_BUTTON_Y
	back          = C.SDL_CONTROLLER_BUTTON_BACK
	guide         = C.SDL_CONTROLLER_BUTTON_GUIDE
	start         = C.SDL_CONTROLLER_BUTTON_START
	leftstick     = C.SDL_CONTROLLER_BUTTON_LEFTSTICK
	rightstick    = C.SDL_CONTROLLER_BUTTON_RIGHTSTICK
	leftshoulder  = C.SDL_CONTROLLER_BUTTON_LEFTSHOULDER
	rightshoulder = C.SDL_CONTROLLER_BUTTON_RIGHTSHOULDER
	dpad_up       = C.SDL_CONTROLLER_BUTTON_DPAD_UP
	dpad_down     = C.SDL_CONTROLLER_BUTTON_DPAD_DOWN
	dpad_left     = C.SDL_CONTROLLER_BUTTON_DPAD_LEFT
	dpad_right    = C.SDL_CONTROLLER_BUTTON_DPAD_RIGHT
	misc1         = C.SDL_CONTROLLER_BUTTON_MISC1    // Xbox Series X share button, PS5 microphone button, Nintendo Switch Pro capture button, Amazon Luna microphone button
	paddle1       = C.SDL_CONTROLLER_BUTTON_PADDLE1  // Xbox Elite paddle P1 (upper left, facing the back)
	paddle2       = C.SDL_CONTROLLER_BUTTON_PADDLE2  // Xbox Elite paddle P3 (upper right, facing the back)
	paddle3       = C.SDL_CONTROLLER_BUTTON_PADDLE3  // Xbox Elite paddle P2 (lower left, facing the back)
	paddle4       = C.SDL_CONTROLLER_BUTTON_PADDLE4  // Xbox Elite paddle P4 (lower right, facing the back)
	touchpad      = C.SDL_CONTROLLER_BUTTON_TOUCHPAD // PS4/PS5 touchpad button
	max           = C.SDL_CONTROLLER_BUTTON_MAX
}
enum GameControllerType {
	unknown                      = C.SDL_CONTROLLER_TYPE_UNKNOWN // 0
	xbox360                      = C.SDL_CONTROLLER_TYPE_XBOX360
	xboxone                      = C.SDL_CONTROLLER_TYPE_XBOXONE
	ps3                          = C.SDL_CONTROLLER_TYPE_PS3
	ps4                          = C.SDL_CONTROLLER_TYPE_PS4
	nintendo_switch_pro          = C.SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO
	virtual                      = C.SDL_CONTROLLER_TYPE_VIRTUAL
	ps5                          = C.SDL_CONTROLLER_TYPE_PS5
	amazon_luna                  = C.SDL_CONTROLLER_TYPE_AMAZON_LUNA
	google_stadia                = C.SDL_CONTROLLER_TYPE_GOOGLE_STADIA
	nvidia_shield                = C.SDL_CONTROLLER_TYPE_NVIDIA_SHIELD
	nintendo_switch_joycon_left  = C.SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT
	nintendo_switch_joycon_right = C.SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT
	nintendo_switch_joycon_pair  = C.SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR
	max                          = C.SDL_CONTROLLER_TYPE_MAX
}
enum HintPriority {
	default  = C.SDL_HINT_DEFAULT
	normal   = C.SDL_HINT_NORMAL
	override = C.SDL_HINT_OVERRIDE
}
enum HitTestResult {
	normal             = C.SDL_HITTEST_NORMAL    // Region is normal. No special properties.
	draggable          = C.SDL_HITTEST_DRAGGABLE // Region can drag entire window.
	resize_topleft     = C.SDL_HITTEST_RESIZE_TOPLEFT
	resize_top         = C.SDL_HITTEST_RESIZE_TOP
	resize_topright    = C.SDL_HITTEST_RESIZE_TOPRIGHT
	resize_right       = C.SDL_HITTEST_RESIZE_RIGHT
	resize_bottomright = C.SDL_HITTEST_RESIZE_BOTTOMRIGHT
	resize_bottom      = C.SDL_HITTEST_RESIZE_BOTTOM
	resize_bottomleft  = C.SDL_HITTEST_RESIZE_BOTTOMLEFT
	resize_left        = C.SDL_HITTEST_RESIZE_LEFT
}
enum JoystickPowerLevel {
	unknown = -1
	empty  // <= 5%
	low    // <= 20%
	medium // <= 70%
	full   // <= 100%
	wired
	max
}
enum JoystickType {
	unknown
	gamecontroller
	wheel
	arcade_stick
	flight_stick
	dance_pad
	guitar
	drum_kit
	arcade_pad
	throttle
}
enum KeyCode {
	unknown      = C.SDLK_UNKNOWN    // 0
	@return      = C.SDLK_RETURN     // '\r'
	escape       = C.SDLK_ESCAPE     // '\x1B'
	backspace    = C.SDLK_BACKSPACE  // '\b'
	tab          = C.SDLK_TAB        // '\t'
	space        = C.SDLK_SPACE      // ' '
	exclaim      = C.SDLK_EXCLAIM    // '!'
	quotedbl     = C.SDLK_QUOTEDBL   // '"'
	hash         = C.SDLK_HASH       // '#'
	percent      = C.SDLK_PERCENT    // '%'
	dollar       = C.SDLK_DOLLAR     // '$'
	ampersand    = C.SDLK_AMPERSAND  // '&'
	quote        = C.SDLK_QUOTE      // '\''
	leftparen    = C.SDLK_LEFTPAREN  // '('
	rightparen   = C.SDLK_RIGHTPAREN // ')'
	asterisk     = C.SDLK_ASTERISK   // '*'
	plus         = C.SDLK_PLUS       // '+'
	comma        = C.SDLK_COMMA      // ''
	minus        = C.SDLK_MINUS      // '-'
	period       = C.SDLK_PERIOD     // '.'
	slash        = C.SDLK_SLASH      // '/'
	_0           = C.SDLK_0          // '0'
	_1           = C.SDLK_1          // '1'
	_2           = C.SDLK_2          // '2'
	_3           = C.SDLK_3          // '3'
	_4           = C.SDLK_4          // '4'
	_5           = C.SDLK_5          // '5'
	_6           = C.SDLK_6          // '6'
	_7           = C.SDLK_7          // '7'
	_8           = C.SDLK_8          // '8'
	_9           = C.SDLK_9          // '9'
	colon        = C.SDLK_COLON      // ':'
	semicolon    = C.SDLK_SEMICOLON  // ';'
	less         = C.SDLK_LESS       // '<'
	equals       = C.SDLK_EQUALS     // '='
	greater      = C.SDLK_GREATER    // '>'
	question     = C.SDLK_QUESTION   // '?'
	at           = C.SDLK_AT         // '@'
	/*
	Skip uppercase letters
	*/
	leftbracket  = C.SDLK_LEFTBRACKET  // '['
	backslash    = C.SDLK_BACKSLASH    // '\\'
	rightbracket = C.SDLK_RIGHTBRACKET // ']'
	caret        = C.SDLK_CARET        // '^'
	underscore   = C.SDLK_UNDERSCORE   // '_'
	backquote    = C.SDLK_BACKQUOTE    // '`'
	a            = C.SDLK_a            // 'a'
	b            = C.SDLK_b            // 'b'
	c            = C.SDLK_c            // 'c'
	d            = C.SDLK_d            // 'd'
	e            = C.SDLK_e            // 'e'
	f            = C.SDLK_f            // 'f'
	g            = C.SDLK_g            // 'g'
	h            = C.SDLK_h            // 'h'
	i            = C.SDLK_i            // 'i'
	j            = C.SDLK_j            // 'j'
	k            = C.SDLK_k            // 'k'
	l            = C.SDLK_l            // 'l'
	m            = C.SDLK_m            // 'm'
	n            = C.SDLK_n            // 'n'
	o            = C.SDLK_o            // 'o'
	p            = C.SDLK_p            // 'p'
	q            = C.SDLK_q            // 'q'
	r            = C.SDLK_r            // 'r'
	s            = C.SDLK_s            // 's'
	t            = C.SDLK_t            // 't'
	u            = C.SDLK_u            // 'u'
	v            = C.SDLK_v            // 'v'
	w            = C.SDLK_w            // 'w'
	x            = C.SDLK_x            // 'x'
	y            = C.SDLK_y            // 'y'
	z            = C.SDLK_z            // 'z'
	//
	capslock = C.SDLK_CAPSLOCK
	//
	f1  = C.SDLK_F1
	f2  = C.SDLK_F2
	f3  = C.SDLK_F3
	f4  = C.SDLK_F4
	f5  = C.SDLK_F5
	f6  = C.SDLK_F6
	f7  = C.SDLK_F7
	f8  = C.SDLK_F8
	f9  = C.SDLK_F9
	f10 = C.SDLK_F10
	f11 = C.SDLK_F11
	f12 = C.SDLK_F12
	//
	printscreen = C.SDLK_PRINTSCREEN
	scrolllock  = C.SDLK_SCROLLLOCK
	pause       = C.SDLK_PAUSE
	insert      = C.SDLK_INSERT
	home        = C.SDLK_HOME
	pageup      = C.SDLK_PAGEUP
	delete      = C.SDLK_DELETE // '\x7F'
	end         = C.SDLK_END
	pagedown    = C.SDLK_PAGEDOWN
	right       = C.SDLK_RIGHT
	left        = C.SDLK_LEFT
	down        = C.SDLK_DOWN
	up          = C.SDLK_UP
	//
	numlockclear = C.SDLK_NUMLOCKCLEAR
	divide       = C.SDLK_KP_DIVIDE
	kp_multiply  = C.SDLK_KP_MULTIPLY
	kp_minus     = C.SDLK_KP_MINUS
	kp_plus      = C.SDLK_KP_PLUS
	kp_enter     = C.SDLK_KP_ENTER
	kp_1         = C.SDLK_KP_1
	kp_2         = C.SDLK_KP_2
	kp_3         = C.SDLK_KP_3
	kp_4         = C.SDLK_KP_4
	kp_5         = C.SDLK_KP_5
	kp_6         = C.SDLK_KP_6
	kp_7         = C.SDLK_KP_7
	kp_8         = C.SDLK_KP_8
	kp_9         = C.SDLK_KP_9
	kp_0         = C.SDLK_KP_0
	kp_period    = C.SDLK_KP_PERIOD
	//
	application = C.SDLK_APPLICATION
	power       = C.SDLK_POWER
	kp_equals   = C.SDLK_KP_EQUALS
	f13         = C.SDLK_F13
	f14         = C.SDLK_F14
	f15         = C.SDLK_F15
	f16         = C.SDLK_F16
	f17         = C.SDLK_F17
	f18         = C.SDLK_F18
	f19         = C.SDLK_F19
	f20         = C.SDLK_F20
	f21         = C.SDLK_F21
	f22         = C.SDLK_F22
	f23         = C.SDLK_F23
	f24         = C.SDLK_F24
	execute     = C.SDLK_EXECUTE
	help        = C.SDLK_HELP
	menu        = C.SDLK_MENU
	@select     = C.SDLK_SELECT
	stop        = C.SDLK_STOP
	again       = C.SDLK_AGAIN
	undo        = C.SDLK_UNDO
	cut         = C.SDLK_CUT
	copy        = C.SDLK_COPY
	paste       = C.SDLK_PASTE
	find        = C.SDLK_FIND
	mute        = C.SDLK_MUTE
	volumeup    = C.SDLK_VOLUMEUP
	volumedown  = C.SDLK_VOLUMEDOWN
	kp_comma    = C.SDLK_KP_COMMA
	equalsas400 = C.SDLK_KP_EQUALSAS400
	//
	alterase   = C.SDLK_ALTERASE
	sysreq     = C.SDLK_SYSREQ
	cancel     = C.SDLK_CANCEL
	clear      = C.SDLK_CLEAR
	prior      = C.SDLK_PRIOR
	return2    = C.SDLK_RETURN2
	separator  = C.SDLK_SEPARATOR
	out        = C.SDLK_OUT
	oper       = C.SDLK_OPER
	clearagain = C.SDLK_CLEARAGAIN
	crsel      = C.SDLK_CRSEL
	exsel      = C.SDLK_EXSEL
	//
	kp_00              = C.SDLK_KP_00
	kp_000             = C.SDLK_KP_000
	thousandsseparator = C.SDLK_THOUSANDSSEPARATOR
	decimalseparator   = C.SDLK_DECIMALSEPARATOR
	currencyunit       = C.SDLK_CURRENCYUNIT
	currencysubunit    = C.SDLK_CURRENCYSUBUNIT
	kp_leftparen       = C.SDLK_KP_LEFTPAREN
	kp_rightparen      = C.SDLK_KP_RIGHTPAREN
	kp_leftbrace       = C.SDLK_KP_LEFTBRACE
	kp_rightbrace      = C.SDLK_KP_RIGHTBRACE
	kp_tab             = C.SDLK_KP_TAB
	kp_backspace       = C.SDLK_KP_BACKSPACE
	kp_a               = C.SDLK_KP_A
	kp_b               = C.SDLK_KP_B
	kp_c               = C.SDLK_KP_C
	kp_d               = C.SDLK_KP_D
	kp_e               = C.SDLK_KP_E
	kp_f               = C.SDLK_KP_F
	kp_xor             = C.SDLK_KP_XOR
	kp_power           = C.SDLK_KP_POWER
	kp_percent         = C.SDLK_KP_PERCENT
	kp_less            = C.SDLK_KP_LESS
	kp_greater         = C.SDLK_KP_GREATER
	kp_ampersand       = C.SDLK_KP_AMPERSAND
	kp_dblampersand    = C.SDLK_KP_DBLAMPERSAND
	kp_verticalbar     = C.SDLK_KP_VERTICALBAR
	kp_dblverticalbar  = C.SDLK_KP_DBLVERTICALBAR
	kp_colon           = C.SDLK_KP_COLON
	kp_hash            = C.SDLK_KP_HASH
	kp_space           = C.SDLK_KP_SPACE
	kp_at              = C.SDLK_KP_AT
	kp_exclam          = C.SDLK_KP_EXCLAM
	kp_memstore        = C.SDLK_KP_MEMSTORE
	kp_memrecall       = C.SDLK_KP_MEMRECALL
	kp_memclear        = C.SDLK_KP_MEMCLEAR
	kp_memadd          = C.SDLK_KP_MEMADD
	kp_memsubtract     = C.SDLK_KP_MEMSUBTRACT
	kp_memmultiply     = C.SDLK_KP_MEMMULTIPLY
	kp_memdivide       = C.SDLK_KP_MEMDIVIDE
	kp_plusminus       = C.SDLK_KP_PLUSMINUS
	kp_clear           = C.SDLK_KP_CLEAR
	kp_clearentry      = C.SDLK_KP_CLEARENTRY
	kp_binary          = C.SDLK_KP_BINARY
	kp_octal           = C.SDLK_KP_OCTAL
	kp_decimal         = C.SDLK_KP_DECIMAL
	kp_hexadecimal     = C.SDLK_KP_HEXADECIMAL
	lctrl              = C.SDLK_LCTRL
	lshift             = C.SDLK_LSHIFT
	lalt               = C.SDLK_LALT
	lgui               = C.SDLK_LGUI
	rctrl              = C.SDLK_RCTRL
	rshift             = C.SDLK_RSHIFT
	ralt               = C.SDLK_RALT
	rgui               = C.SDLK_RGUI
	//
	mode = C.SDLK_MODE
	//
	audionext    = C.SDLK_AUDIONEXT
	audioprev    = C.SDLK_AUDIOPREV
	audiostop    = C.SDLK_AUDIOSTOP
	audioplay    = C.SDLK_AUDIOPLAY
	audiomute    = C.SDLK_AUDIOMUTE
	mediaselect  = C.SDLK_MEDIASELECT
	www          = C.SDLK_WWW
	mail         = C.SDLK_MAIL
	calculator   = C.SDLK_CALCULATOR
	computer     = C.SDLK_COMPUTER
	ac_search    = C.SDLK_AC_SEARCH
	ac_home      = C.SDLK_AC_HOME
	ac_back      = C.SDLK_AC_BACK
	ac_forward   = C.SDLK_AC_FORWARD
	ac_stop      = C.SDLK_AC_STOP
	ac_refresh   = C.SDLK_AC_REFRESH
	ac_bookmarks = C.SDLK_AC_BOOKMARKS
	//
	brightnessdown   = C.SDLK_BRIGHTNESSDOWN
	brightnessup     = C.SDLK_BRIGHTNESSUP
	displayswitch    = C.SDLK_DISPLAYSWITCH
	kbdillumtoggle   = C.SDLK_KBDILLUMTOGGLE
	kbdillumdown     = C.SDLK_KBDILLUMDOWN
	kbdillumup       = C.SDLK_KBDILLUMUP
	eject            = C.SDLK_EJECT
	sleep            = C.SDLK_SLEEP
	app1             = C.SDLK_APP1
	app2             = C.SDLK_APP2
	audiorewind      = C.SDLK_AUDIOREWIND
	audiofastforward = C.SDLK_AUDIOFASTFORWARD
	//
	softleft  = C.SDLK_SOFTLEFT
	softright = C.SDLK_SOFTRIGHT
	call      = C.SDLK_CALL
	endcall   = C.SDLK_ENDCALL
}
enum Keymod {
	@none  = C.KMOD_NONE   // 0x0000
	lshift = C.KMOD_LSHIFT // 0x0001
	rshift = C.KMOD_RSHIFT // 0x0002
	lctrl  = C.KMOD_LCTRL  // 0x0040
	rctrl  = C.KMOD_RCTRL  // 0x0080
	lalt   = C.KMOD_LALT   // 0x0100
	ralt   = C.KMOD_RALT   // 0x0200
	lgui   = C.KMOD_LGUI   // 0x0400
	rgui   = C.KMOD_RGUI   // 0x0800
	num    = C.KMOD_NUM    // 0x1000
	caps   = C.KMOD_CAPS   // 0x2000
	mode   = C.KMOD_MODE   // 0x4000
	scroll = C.KMOD_SCROLL // 0x8000
	//
	ctrl  = C.KMOD_CTRL
	shift = C.KMOD_SHIFT
	alt   = C.KMOD_ALT
	gui   = C.KMOD_GUI
	//
	reserved = C.KMOD_RESERVED // (KMOD_SCROLL) This is for source-level compatibility with SDL 2.0.0.
}
enum LogCategory {
	application = C.SDL_LOG_CATEGORY_APPLICATION
	error       = C.SDL_LOG_CATEGORY_ERROR
	@assert     = C.SDL_LOG_CATEGORY_ASSERT
	system      = C.SDL_LOG_CATEGORY_SYSTEM
	audio       = C.SDL_LOG_CATEGORY_AUDIO
	video       = C.SDL_LOG_CATEGORY_VIDEO
	render      = C.SDL_LOG_CATEGORY_RENDER
	input       = C.SDL_LOG_CATEGORY_INPUT
	test        = C.SDL_LOG_CATEGORY_TEST
	// Reserved for future SDL library use
	reserved1  = C.SDL_LOG_CATEGORY_RESERVED1
	reserved2  = C.SDL_LOG_CATEGORY_RESERVED2
	reserved3  = C.SDL_LOG_CATEGORY_RESERVED3
	reserved4  = C.SDL_LOG_CATEGORY_RESERVED4
	reserved5  = C.SDL_LOG_CATEGORY_RESERVED5
	reserved6  = C.SDL_LOG_CATEGORY_RESERVED6
	reserved7  = C.SDL_LOG_CATEGORY_RESERVED7
	reserved8  = C.SDL_LOG_CATEGORY_RESERVED8
	reserved9  = C.SDL_LOG_CATEGORY_RESERVED9
	reserved10 = C.SDL_LOG_CATEGORY_RESERVED10
	// Beyond this point is reserved for application use, e.g.
	//   enum {
	//       MYAPP_CATEGORY_AWESOME1 = SDL_LOG_CATEGORY_CUSTOM,
	//       MYAPP_CATEGORY_AWESOME2,
	//       MYAPP_CATEGORY_AWESOME3,
	//       ...
	//   };
	//
	custom = C.SDL_LOG_CATEGORY_CUSTOM
}
enum LogPriority {
	verbose            = C.SDL_LOG_PRIORITY_VERBOSE // 1
	debug              = C.SDL_LOG_PRIORITY_DEBUG
	info               = C.SDL_LOG_PRIORITY_INFO
	warn               = C.SDL_LOG_PRIORITY_WARN
	error              = C.SDL_LOG_PRIORITY_ERROR
	critical           = C.SDL_LOG_PRIORITY_CRITICAL
	num_log_priorities = C.SDL_NUM_LOG_PRIORITIES
}
enum MessageBoxButtonFlags {
	returnkey_default = C.SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT // 0x00000001, Marks the default button when return is hit
	escapekey_default = C.SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT // 0x00000002, Marks the default button when escape is hit
}
enum MessageBoxColorType {
	background        = C.SDL_MESSAGEBOX_COLOR_BACKGROUND
	text              = C.SDL_MESSAGEBOX_COLOR_TEXT
	button_border     = C.SDL_MESSAGEBOX_COLOR_BUTTON_BORDER
	button_background = C.SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND
	button_selected   = C.SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED
	max               = C.SDL_MESSAGEBOX_COLOR_MAX
}
enum MessageBoxFlags {
	error                 = C.SDL_MESSAGEBOX_ERROR                 // 0x00000010, error dialog
	warning               = C.SDL_MESSAGEBOX_WARNING               // 0x00000020, warning dialog
	information           = C.SDL_MESSAGEBOX_INFORMATION           // 0x00000040, informational dialog
	buttons_left_to_right = C.SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT // 0x00000080, buttons placed left to right
	buttons_right_to_left = C.SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT // 0x00000100, buttons placed right to left
}
enum MouseWheelDirection {
	normal  = C.SDL_MOUSEWHEEL_NORMAL  // The scroll direction is normal
	flipped = C.SDL_MOUSEWHEEL_FLIPPED // The scroll direction is flipped / natural
}
enum PackedLayout {
	@none          = C.SDL_PACKEDLAYOUT_NONE
	layout_332     = C.SDL_PACKEDLAYOUT_332
	layout_4444    = C.SDL_PACKEDLAYOUT_4444
	layout_1555    = C.SDL_PACKEDLAYOUT_1555
	layout_5551    = C.SDL_PACKEDLAYOUT_5551
	layout_565     = C.SDL_PACKEDLAYOUT_565
	layout_8888    = C.SDL_PACKEDLAYOUT_8888
	layout_2101010 = C.SDL_PACKEDLAYOUT_2101010
	layout_1010102 = C.SDL_PACKEDLAYOUT_1010102
}
enum PackedOrder {
	@none = C.SDL_PACKEDORDER_NONE
	xrgb  = C.SDL_PACKEDORDER_XRGB
	rgbx  = C.SDL_PACKEDORDER_RGBX
	argb  = C.SDL_PACKEDORDER_ARGB
	rgba  = C.SDL_PACKEDORDER_RGBA
	xbgr  = C.SDL_PACKEDORDER_XBGR
	bgrx  = C.SDL_PACKEDORDER_BGRX
	abgr  = C.SDL_PACKEDORDER_ABGR
	bgra  = C.SDL_PACKEDORDER_BGRA
}
enum PixelType {
	unknown  = C.SDL_PIXELTYPE_UNKNOWN
	index1   = C.SDL_PIXELTYPE_INDEX1
	index4   = C.SDL_PIXELTYPE_INDEX4
	index8   = C.SDL_PIXELTYPE_INDEX8
	packed8  = C.SDL_PIXELTYPE_PACKED8
	packed16 = C.SDL_PIXELTYPE_PACKED16
	packed32 = C.SDL_PIXELTYPE_PACKED32
	arrayu8  = C.SDL_PIXELTYPE_ARRAYU8
	arrayu16 = C.SDL_PIXELTYPE_ARRAYU16
	arrayu32 = C.SDL_PIXELTYPE_ARRAYU32
	arrayf16 = C.SDL_PIXELTYPE_ARRAYF16
	arrayf32 = C.SDL_PIXELTYPE_ARRAYF32
	// This must be at the end of the list to avoid breaking the existing ABI
	index2 = C.SDL_PIXELTYPE_INDEX2
}
enum PowerState {
	unknown    = C.SDL_POWERSTATE_UNKNOWN    // cannot determine power status
	on_battery = C.SDL_POWERSTATE_ON_BATTERY // Not plugged in, running on the battery
	no_battery = C.SDL_POWERSTATE_NO_BATTERY // Plugged in, no battery available
	charging   = C.SDL_POWERSTATE_CHARGING   // Plugged in, charging battery
	charged    = C.SDL_POWERSTATE_CHARGED    // Plugged in, battery charged
}
enum RendererFlags {
	software      = C.SDL_RENDERER_SOFTWARE      // 0x00000001 The renderer is a software fallback
	accelerated   = C.SDL_RENDERER_ACCELERATED   // 0x00000002 The renderer uses hardware acceleration
	presentvsync  = C.SDL_RENDERER_PRESENTVSYNC  // 0x00000004 Present is synchronized with the refresh rate
	targettexture = C.SDL_RENDERER_TARGETTEXTURE // 0x00000008
}
enum RendererFlip {
	@none      = C.SDL_FLIP_NONE       // 0x00000000 Do not flip
	horizontal = C.SDL_FLIP_HORIZONTAL // 0x00000001 flip horizontally
	vertical   = C.SDL_FLIP_VERTICAL   // 0x00000002  flip vertically
}
enum ScaleMode {
	nearest = C.SDL_ScaleModeNearest // nearest pixel sampling
	linear  = C.SDL_ScaleModeLinear  // linear filtering
	best    = C.SDL_ScaleModeBest    // anisotropic filtering
}
enum Scancode {
	scancode_unknown = C.SDL_SCANCODE_UNKNOWN // 0
	// Usage page 0x07
	//
	// These values are from usage page 0x07 (USB keyboard page).
	//
	scancode_a = C.SDL_SCANCODE_A // 4
	scancode_b = C.SDL_SCANCODE_B // 5
	scancode_c = C.SDL_SCANCODE_C // 6
	scancode_d = C.SDL_SCANCODE_D // 7
	scancode_e = C.SDL_SCANCODE_E // 8
	scancode_f = C.SDL_SCANCODE_F // 9
	scancode_g = C.SDL_SCANCODE_G // 10
	scancode_h = C.SDL_SCANCODE_H // 11
	scancode_i = C.SDL_SCANCODE_I // 12
	scancode_j = C.SDL_SCANCODE_J // 13
	scancode_k = C.SDL_SCANCODE_K // 14
	scancode_l = C.SDL_SCANCODE_L // 15
	scancode_m = C.SDL_SCANCODE_M // 16
	scancode_n = C.SDL_SCANCODE_N // 17
	scancode_o = C.SDL_SCANCODE_O // 18
	scancode_p = C.SDL_SCANCODE_P // 19
	scancode_q = C.SDL_SCANCODE_Q // 20
	scancode_r = C.SDL_SCANCODE_R // 21
	scancode_s = C.SDL_SCANCODE_S // 22
	scancode_t = C.SDL_SCANCODE_T // 23
	scancode_u = C.SDL_SCANCODE_U // 24
	scancode_v = C.SDL_SCANCODE_V // 25
	scancode_w = C.SDL_SCANCODE_W // 26
	scancode_x = C.SDL_SCANCODE_X // 27
	scancode_y = C.SDL_SCANCODE_Y // 28
	scancode_z = C.SDL_SCANCODE_Z // 29
	//
	scancode_1 = C.SDL_SCANCODE_1 // 30
	scancode_2 = C.SDL_SCANCODE_2 // 31
	scancode_3 = C.SDL_SCANCODE_3 // 32
	scancode_4 = C.SDL_SCANCODE_4 // 33
	scancode_5 = C.SDL_SCANCODE_5 // 34
	scancode_6 = C.SDL_SCANCODE_6 // 35
	scancode_7 = C.SDL_SCANCODE_7 // 36
	scancode_8 = C.SDL_SCANCODE_8 // 37
	scancode_9 = C.SDL_SCANCODE_9 // 38
	scancode_0 = C.SDL_SCANCODE_0 // 39
	//
	scancode_return    = C.SDL_SCANCODE_RETURN    // 40
	scancode_escape    = C.SDL_SCANCODE_ESCAPE    // 41
	scancode_backspace = C.SDL_SCANCODE_BACKSPACE // 42
	scancode_tab       = C.SDL_SCANCODE_TAB       // 43
	scancode_space     = C.SDL_SCANCODE_SPACE     // 44
	//
	scancode_minus        = C.SDL_SCANCODE_MINUS        // 45
	scancode_equals       = C.SDL_SCANCODE_EQUALS       // 46
	scancode_leftbracket  = C.SDL_SCANCODE_LEFTBRACKET  // 47
	scancode_rightbracket = C.SDL_SCANCODE_RIGHTBRACKET // 48
	// Located at the lower left of the return
	// key on ISO keyboards and at the right end
	// of the QWERTY row on ANSI keyboards.
	// Produces REVERSE SOLIDUS (backslash) and
	// VERTICAL LINE in a US layout, REVERSE
	// SOLIDUS and VERTICAL LINE in a UK Mac
	// layout, NUMBER SIGN and TILDE in a UK
	// Windows layout, DOLLAR SIGN and POUND SIGN
	// in a Swiss German layout, NUMBER SIGN and
	// APOSTROPHE in a German layout, GRAVE
	// ACCENT and POUND SIGN in a French Mac
	// layout, and ASTERISK and MICRO SIGN in a
	// French Windows layout.
	scancode_backslash = C.SDL_SCANCODE_BACKSLASH // 49
	// ISO USB keyboards actually use this code
	// instead of 49 for the same key, but all
	// OSes I've seen treat the two codes
	// identically. So, as an implementor, unless
	// your keyboard generates both of those
	// codes and your OS treats them differently,
	// you should generate SDL_SCANCODE_BACKSLASH
	// instead of this code. As a user, you
	// should not rely on this code because SDL
	// will never generate it with most (all?)
	// keyboards.
	scancode_nonushash  = C.SDL_SCANCODE_NONUSHASH  // 50
	scancode_semicolon  = C.SDL_SCANCODE_SEMICOLON  // 51
	scancode_apostrophe = C.SDL_SCANCODE_APOSTROPHE // 52
	// Located in the top left corner (on both ANSI
	// and ISO keyboards). Produces GRAVE ACCENT and
	// TILDE in a US Windows layout and in US and UK
	// Mac layouts on ANSI keyboards, GRAVE ACCENT
	// and NOT SIGN in a UK Windows layout, SECTION
	// SIGN and PLUS-MINUS SIGN in US and UK Mac
	// layouts on ISO keyboards, SECTION SIGN and
	// DEGREE SIGN in a Swiss German layout (Mac:
	// only on ISO keyboards), CIRCUMFLEX ACCENT and
	// DEGREE SIGN in a German layout (Mac: only on
	// ISO keyboards), SUPERSCRIPT TWO and TILDE in a
	// French Windows layout, COMMERCIAL AT and
	// NUMBER SIGN in a French Mac layout on ISO
	// keyboards, and LESS-THAN SIGN and GREATER-THAN
	// SIGN in a Swiss German, German, or French Mac
	// layout on ANSI keyboards.
	scancode_grave = C.SDL_SCANCODE_GRAVE // 53
	//
	scancode_comma  = C.SDL_SCANCODE_COMMA  // 54
	scancode_period = C.SDL_SCANCODE_PERIOD // 55
	scancode_slash  = C.SDL_SCANCODE_SLASH  // 56
	//
	scancode_capslock = C.SDL_SCANCODE_CAPSLOCK // 57
	//
	scancode_f1  = C.SDL_SCANCODE_F1  // 58
	scancode_f2  = C.SDL_SCANCODE_F2  // 59
	scancode_f3  = C.SDL_SCANCODE_F3  // 60
	scancode_f4  = C.SDL_SCANCODE_F4  // 61
	scancode_f5  = C.SDL_SCANCODE_F5  // 62
	scancode_f6  = C.SDL_SCANCODE_F6  // 63
	scancode_f7  = C.SDL_SCANCODE_F7  // 64
	scancode_f8  = C.SDL_SCANCODE_F8  // 65
	scancode_f9  = C.SDL_SCANCODE_F9  // 66
	scancode_f10 = C.SDL_SCANCODE_F10 // 67
	scancode_f11 = C.SDL_SCANCODE_F11 // 68
	scancode_f12 = C.SDL_SCANCODE_F12 // 69
	//
	scancode_printscreen = C.SDL_SCANCODE_PRINTSCREEN // 70
	scancode_scrolllock  = C.SDL_SCANCODE_SCROLLLOCK  // 71
	scancode_pause       = C.SDL_SCANCODE_PAUSE       // 72
	// insert on PC, help on some Mac keyboards (but does send code 73, not 117)
	scancode_insert = C.SDL_SCANCODE_INSERT // 73
	//
	scancode_home     = C.SDL_SCANCODE_HOME     // 74
	scancode_pageup   = C.SDL_SCANCODE_PAGEUP   // 75
	scancode_delete   = C.SDL_SCANCODE_DELETE   // 76
	scancode_end      = C.SDL_SCANCODE_END      // 77
	scancode_pagedown = C.SDL_SCANCODE_PAGEDOWN // 78
	scancode_right    = C.SDL_SCANCODE_RIGHT    // 79
	scancode_left     = C.SDL_SCANCODE_LEFT     // 80
	scancode_down     = C.SDL_SCANCODE_DOWN     // 81
	scancode_up       = C.SDL_SCANCODE_UP       // 82
	//
	scancode_numlockclear = C.SDL_SCANCODE_NUMLOCKCLEAR // 83 num lock on PC, clear on Mac keyboards
	//
	scancode_kp_divide   = C.SDL_SCANCODE_KP_DIVIDE   // 84
	scancode_kp_multiply = C.SDL_SCANCODE_KP_MULTIPLY // 85
	scancode_kp_minus    = C.SDL_SCANCODE_KP_MINUS    // 86
	scancode_kp_plus     = C.SDL_SCANCODE_KP_PLUS     // 87
	scancode_kp_enter    = C.SDL_SCANCODE_KP_ENTER    // 88
	scancode_kp_1        = C.SDL_SCANCODE_KP_1        // 89
	scancode_kp_2        = C.SDL_SCANCODE_KP_2        // 90
	scancode_kp_3        = C.SDL_SCANCODE_KP_3        // 91
	scancode_kp_4        = C.SDL_SCANCODE_KP_4        // 92
	scancode_kp_5        = C.SDL_SCANCODE_KP_5        // 93
	scancode_kp_6        = C.SDL_SCANCODE_KP_6        // 94
	scancode_kp_7        = C.SDL_SCANCODE_KP_7        // 95
	scancode_kp_8        = C.SDL_SCANCODE_KP_8        // 96
	scancode_kp_9        = C.SDL_SCANCODE_KP_9        // 97
	scancode_kp_0        = C.SDL_SCANCODE_KP_0        // 98
	scancode_kp_period   = C.SDL_SCANCODE_KP_PERIOD   // 99
	//
	// This is the additional key that ISO
	// keyboards have over ANSI ones,
	// located between left shift and Y.
	// Produces GRAVE ACCENT and TILDE in a
	// US or UK Mac layout, REVERSE SOLIDUS
	// (backslash) and VERTICAL LINE in a
	// US or UK Windows layout, and
	// LESS-THAN SIGN and GREATER-THAN SIGN
	// in a Swiss German, German, or French
	// layout.
	scancode_nonusbackslash = C.SDL_SCANCODE_NONUSBACKSLASH // 100
	//
	scancode_application = C.SDL_SCANCODE_APPLICATION // 101 windows contextual menu, compose
	// The USB document says this is a status flag,
	// not a physical key - but some Mac keyboards
	// do have a power key.
	scancode_power = C.SDL_SCANCODE_POWER // 102
	//
	scancode_kp_equals  = C.SDL_SCANCODE_KP_EQUALS  // 103
	scancode_f13        = C.SDL_SCANCODE_F13        // 104
	scancode_f14        = C.SDL_SCANCODE_F14        // 105
	scancode_f15        = C.SDL_SCANCODE_F15        // 106
	scancode_f16        = C.SDL_SCANCODE_F16        // 107
	scancode_f17        = C.SDL_SCANCODE_F17        // 108
	scancode_f18        = C.SDL_SCANCODE_F18        // 109
	scancode_f19        = C.SDL_SCANCODE_F19        // 110
	scancode_f20        = C.SDL_SCANCODE_F20        // 111
	scancode_f21        = C.SDL_SCANCODE_F21        // 112
	scancode_f22        = C.SDL_SCANCODE_F22        // 113
	scancode_f23        = C.SDL_SCANCODE_F23        // 114
	scancode_f24        = C.SDL_SCANCODE_F24        // 115
	scancode_execute    = C.SDL_SCANCODE_EXECUTE    // 116
	scancode_help       = C.SDL_SCANCODE_HELP       // 117 AL Integrated Help Center
	scancode_menu       = C.SDL_SCANCODE_MENU       // 118 Menu (show menu)
	scancode_select     = C.SDL_SCANCODE_SELECT     // 119
	scancode_stop       = C.SDL_SCANCODE_STOP       // 120 AC Stop
	scancode_again      = C.SDL_SCANCODE_AGAIN      // 121 AC Redo/Repeat
	scancode_undo       = C.SDL_SCANCODE_UNDO       // 122 AC Undo
	scancode_cut        = C.SDL_SCANCODE_CUT        // 123 AC Cut
	scancode_copy       = C.SDL_SCANCODE_COPY       // 124 AC Copy
	scancode_paste      = C.SDL_SCANCODE_PASTE      // 125 AC Paste
	scancode_find       = C.SDL_SCANCODE_FIND       // 126 AC Find
	scancode_mute       = C.SDL_SCANCODE_MUTE       // 127
	scancode_volumeup   = C.SDL_SCANCODE_VOLUMEUP   // 128
	scancode_volumedown = C.SDL_SCANCODE_VOLUMEDOWN // 129
	//
	scancode_kp_comma       = C.SDL_SCANCODE_KP_COMMA       // 133
	scancode_kp_equalsas400 = C.SDL_SCANCODE_KP_EQUALSAS400 // 134
	scancode_international1 = C.SDL_SCANCODE_INTERNATIONAL1 // 135 used on Asian keyboards, see footnotes in USB doc
	scancode_international2 = C.SDL_SCANCODE_INTERNATIONAL2 // 136
	scancode_international3 = C.SDL_SCANCODE_INTERNATIONAL3 // 137 Yen
	scancode_international4 = C.SDL_SCANCODE_INTERNATIONAL4 // 138
	scancode_international5 = C.SDL_SCANCODE_INTERNATIONAL5 // 139
	scancode_international6 = C.SDL_SCANCODE_INTERNATIONAL6 // 140
	scancode_international7 = C.SDL_SCANCODE_INTERNATIONAL7 // 141
	scancode_international8 = C.SDL_SCANCODE_INTERNATIONAL8 // 142
	scancode_international9 = C.SDL_SCANCODE_INTERNATIONAL9 // 143
	scancode_lang1          = C.SDL_SCANCODE_LANG1          // 144 Hangul/English toggle
	scancode_lang2          = C.SDL_SCANCODE_LANG2          // 145 Hanja conversion
	scancode_lang3          = C.SDL_SCANCODE_LANG3          // 146 Katakana
	scancode_lang4          = C.SDL_SCANCODE_LANG4          // 147 Hiragana
	scancode_lang5          = C.SDL_SCANCODE_LANG5          // 148 Zenkaku/Hankaku
	scancode_lang6          = C.SDL_SCANCODE_LANG6          // 149 reserved
	scancode_lang7          = C.SDL_SCANCODE_LANG7          // 150 reserved
	scancode_lang8          = C.SDL_SCANCODE_LANG8          // 151 reserved
	scancode_lang9          = C.SDL_SCANCODE_LANG9          // 152 reserved
	//
	scancode_alterase           = C.SDL_SCANCODE_ALTERASE           // 153 Erase-Eaze
	scancode_sysreq             = C.SDL_SCANCODE_SYSREQ             // 154
	scancode_cancel             = C.SDL_SCANCODE_CANCEL             // 155 AC Cancel
	scancode_clear              = C.SDL_SCANCODE_CLEAR              // 156
	scancode_prior              = C.SDL_SCANCODE_PRIOR              // 157
	scancode_return2            = C.SDL_SCANCODE_RETURN2            // 158
	scancode_separator          = C.SDL_SCANCODE_SEPARATOR          // 159
	scancode_out                = C.SDL_SCANCODE_OUT                // 160
	scancode_oper               = C.SDL_SCANCODE_OPER               // 161
	scancode_clearagain         = C.SDL_SCANCODE_CLEARAGAIN         // 162
	scancode_crsel              = C.SDL_SCANCODE_CRSEL              // 163
	scancode_exsel              = C.SDL_SCANCODE_EXSEL              // 164
	scancode_kp_00              = C.SDL_SCANCODE_KP_00              // 176
	scancode_kp_000             = C.SDL_SCANCODE_KP_000             // 177
	scancode_thousandsseparator = C.SDL_SCANCODE_THOUSANDSSEPARATOR // 178
	scancode_decimalseparator   = C.SDL_SCANCODE_DECIMALSEPARATOR   // 179
	scancode_currencyunit       = C.SDL_SCANCODE_CURRENCYUNIT       // 180
	scancode_currencysubunit    = C.SDL_SCANCODE_CURRENCYSUBUNIT    // 181
	scancode_kp_leftparen       = C.SDL_SCANCODE_KP_LEFTPAREN       // 182
	scancode_kp_rightparen      = C.SDL_SCANCODE_KP_RIGHTPAREN      // 183
	scancode_kp_leftbrace       = C.SDL_SCANCODE_KP_LEFTBRACE       // 184
	scancode_kp_rightbrace      = C.SDL_SCANCODE_KP_RIGHTBRACE      // 185
	scancode_kp_tab             = C.SDL_SCANCODE_KP_TAB             // 186
	scancode_kp_backspace       = C.SDL_SCANCODE_KP_BACKSPACE       // 187
	scancode_kp_a               = C.SDL_SCANCODE_KP_A               // 188
	scancode_kp_b               = C.SDL_SCANCODE_KP_B               // 189
	scancode_kp_c               = C.SDL_SCANCODE_KP_C               // 190
	scancode_kp_d               = C.SDL_SCANCODE_KP_D               // 191
	scancode_kp_e               = C.SDL_SCANCODE_KP_E               // 192
	scancode_kp_f               = C.SDL_SCANCODE_KP_F               // 193
	scancode_kp_xor             = C.SDL_SCANCODE_KP_XOR             // 194
	scancode_kp_power           = C.SDL_SCANCODE_KP_POWER           // 195
	scancode_kp_percent         = C.SDL_SCANCODE_KP_PERCENT         // 196
	scancode_kp_less            = C.SDL_SCANCODE_KP_LESS            // 197
	scancode_kp_greater         = C.SDL_SCANCODE_KP_GREATER         // 198
	scancode_kp_ampersand       = C.SDL_SCANCODE_KP_AMPERSAND       // 199
	scancode_kp_dblampersand    = C.SDL_SCANCODE_KP_DBLAMPERSAND    // 200
	scancode_kp_verticalbar     = C.SDL_SCANCODE_KP_VERTICALBAR     // 201
	scancode_kp_dblverticalbar  = C.SDL_SCANCODE_KP_DBLVERTICALBAR  // 202
	scancode_kp_colon           = C.SDL_SCANCODE_KP_COLON           // 203
	scancode_kp_hash            = C.SDL_SCANCODE_KP_HASH            // 204
	scancode_kp_space           = C.SDL_SCANCODE_KP_SPACE           // 205
	scancode_kp_at              = C.SDL_SCANCODE_KP_AT              // 206
	scancode_kp_exclam          = C.SDL_SCANCODE_KP_EXCLAM          // 207
	scancode_kp_memstore        = C.SDL_SCANCODE_KP_MEMSTORE        // 208
	scancode_kp_memrecall       = C.SDL_SCANCODE_KP_MEMRECALL       // 209
	scancode_kp_memclear        = C.SDL_SCANCODE_KP_MEMCLEAR        // 210
	scancode_kp_memadd          = C.SDL_SCANCODE_KP_MEMADD          // 211
	scancode_kp_memsubtract     = C.SDL_SCANCODE_KP_MEMSUBTRACT     // 212
	scancode_kp_memmultiply     = C.SDL_SCANCODE_KP_MEMMULTIPLY     // 213
	scancode_kp_memdivide       = C.SDL_SCANCODE_KP_MEMDIVIDE       // 214
	scancode_kp_plusminus       = C.SDL_SCANCODE_KP_PLUSMINUS       // 215
	scancode_kp_clear           = C.SDL_SCANCODE_KP_CLEAR           // 216
	scancode_kp_clearentry      = C.SDL_SCANCODE_KP_CLEARENTRY      // 217
	scancode_kp_binary          = C.SDL_SCANCODE_KP_BINARY          // 218
	scancode_kp_octal           = C.SDL_SCANCODE_KP_OCTAL           // 219
	scancode_kp_decimal         = C.SDL_SCANCODE_KP_DECIMAL         // 220
	scancode_kp_hexadecimal     = C.SDL_SCANCODE_KP_HEXADECIMAL     // 221
	//
	scancode_lctrl  = C.SDL_SCANCODE_LCTRL  // 224
	scancode_lshift = C.SDL_SCANCODE_LSHIFT // 225
	scancode_lalt   = C.SDL_SCANCODE_LALT   // 226 < alt, option
	scancode_lgui   = C.SDL_SCANCODE_LGUI   // 227 < windows, command (apple), meta
	scancode_rctrl  = C.SDL_SCANCODE_RCTRL  // 228
	scancode_rshift = C.SDL_SCANCODE_RSHIFT // 229
	scancode_ralt   = C.SDL_SCANCODE_RALT   // 230 < alt gr, option
	scancode_rgui   = C.SDL_SCANCODE_RGUI   // 231 < windows, command (apple), meta
	//
	// I'm not sure if this is really not covered
	// by any of the above, but since there's a
	// special KMOD_MODE for it I'm adding it here
	scancode_mode = C.SDL_SCANCODE_MODE // 257
	// I'm not sure if this is really not covered
	// by any of the above, but since there's a
	// special KMOD_MODE for it I'm adding it here
	//
	// Usage page 0x0C (additional media keys)
	//
	// These values are mapped from usage page 0x0C (USB consumer page).
	// See https://usb.org/sites/default/files/hut1_2.pdf
	//
	// There are way more keys in the spec than we can represent in the
	// current scancode range, so pick the ones that commonly come up in
	// real world usage.
	scancode_audionext    = C.SDL_SCANCODE_AUDIONEXT    // 258
	scancode_audioprev    = C.SDL_SCANCODE_AUDIOPREV    // 259
	scancode_audiostop    = C.SDL_SCANCODE_AUDIOSTOP    // 260
	scancode_audioplay    = C.SDL_SCANCODE_AUDIOPLAY    // 261
	scancode_audiomute    = C.SDL_SCANCODE_AUDIOMUTE    // 262
	scancode_mediaselect  = C.SDL_SCANCODE_MEDIASELECT  // 263
	scancode_www          = C.SDL_SCANCODE_WWW          // 264 AL Internet Browser
	scancode_mail         = C.SDL_SCANCODE_MAIL         // 265
	scancode_calculator   = C.SDL_SCANCODE_CALCULATOR   // 266 AL Calculator
	scancode_computer     = C.SDL_SCANCODE_COMPUTER     // 267
	scancode_ac_search    = C.SDL_SCANCODE_AC_SEARCH    // 268 AC Search
	scancode_ac_home      = C.SDL_SCANCODE_AC_HOME      // 269 AC Home
	scancode_ac_back      = C.SDL_SCANCODE_AC_BACK      // 270 AC Back
	scancode_ac_forward   = C.SDL_SCANCODE_AC_FORWARD   // 271 AC Forward
	scancode_ac_stop      = C.SDL_SCANCODE_AC_STOP      // 272 AC Stop
	scancode_ac_refresh   = C.SDL_SCANCODE_AC_REFRESH   // 273 AC Refresh
	scancode_ac_bookmarks = C.SDL_SCANCODE_AC_BOOKMARKS // 274 AC Bookmarks
	// Walther keys
	//
	// These are values that Christian Walther added (for mac keyboard?).
	scancode_brightnessdown = C.SDL_SCANCODE_BRIGHTNESSDOWN // 275
	scancode_brightnessup   = C.SDL_SCANCODE_BRIGHTNESSUP   // 276
	// display mirroring/dual display
	// switch, video mode switch
	scancode_displayswitch  = C.SDL_SCANCODE_DISPLAYSWITCH  // 277
	scancode_kbdillumtoggle = C.SDL_SCANCODE_KBDILLUMTOGGLE // 278
	scancode_kbdillumdown   = C.SDL_SCANCODE_KBDILLUMDOWN   // 279
	scancode_kbdillumup     = C.SDL_SCANCODE_KBDILLUMUP     // 280
	scancode_eject          = C.SDL_SCANCODE_EJECT          // 281
	scancode_sleep          = C.SDL_SCANCODE_SLEEP          // 282 SC System Sleep
	//
	scancode_app1 = C.SDL_SCANCODE_APP1 // 283
	scancode_app2 = C.SDL_SCANCODE_APP2 // 284
	//
	scancode_audiorewind      = C.SDL_SCANCODE_AUDIOREWIND      // 285
	scancode_audiofastforward = C.SDL_SCANCODE_AUDIOFASTFORWARD // 286
	//
	// Mobile keys
	//
	// These are values that are often used on mobile phones.
	//
	// Usually situated below the display on phones and
	// used as a multi-function feature key for selecting
	// a software defined function shown on the bottom left
	// of the display.
	scancode_softleft = C.SDL_SCANCODE_SOFTLEFT // 287
	// Usually situated below the display on phones and
	// used as a multi-function feature key for selecting
	// a software defined function shown on the bottom right
	// of the display.
	scancode_softright = C.SDL_SCANCODE_SOFTRIGHT // 288
	//
	scancode_call    = C.SDL_SCANCODE_CALL    // 289 // Used for accepting phone calls.
	scancode_endcall = C.SDL_SCANCODE_ENDCALL // 290 // Used for rejecting phone calls.
	//
	// Add any other keys here.
	num_scancodes = C.SDL_NUM_SCANCODES // 512
}
enum SensorType {
	invalid        = C.SDL_SENSOR_INVALID // -1, Returned for an invalid sensor
	unknown        = C.SDL_SENSOR_UNKNOWN // Unknown sensor type
	accel          = C.SDL_SENSOR_ACCEL   // Accelerometer
	gyro           = C.SDL_SENSOR_GYRO    // Gyroscope
	sensor_accel_l = C.SDL_SENSOR_ACCEL_L // Accelerometer for left Joy-Con controller and Wii nunchuk
	sensor_gyro_l  = C.SDL_SENSOR_GYRO_L  // Gyroscope for left Joy-Con controller
	sensor_accel_r = C.SDL_SENSOR_ACCEL_R // Accelerometer for right Joy-Con controller
	sensor_gyro_r  = C.SDL_SENSOR_GYRO_R  // Gyroscope for right Joy-Con controller
}
enum SystemCursor {
	arrow       = C.SDL_SYSTEM_CURSOR_ARROW     // Arrow
	ibeam       = C.SDL_SYSTEM_CURSOR_IBEAM     // I-beam
	wait        = C.SDL_SYSTEM_CURSOR_WAIT      // Wait
	crosshair   = C.SDL_SYSTEM_CURSOR_CROSSHAIR // Crosshair
	waitarrow   = C.SDL_SYSTEM_CURSOR_WAITARROW // Small wait cursor (or Wait if not available)
	sizenwse    = C.SDL_SYSTEM_CURSOR_SIZENWSE  // Double arrow pointing northwest and southeast
	sizenesw    = C.SDL_SYSTEM_CURSOR_SIZENESW  // Double arrow pointing northeast and southwest
	sizewe      = C.SDL_SYSTEM_CURSOR_SIZEWE    // Double arrow pointing west and east
	sizens      = C.SDL_SYSTEM_CURSOR_SIZENS    // Double arrow pointing north and south
	sizeall     = C.SDL_SYSTEM_CURSOR_SIZEALL   // Four pointed arrow pointing north, south, east, and west
	no          = C.SDL_SYSTEM_CURSOR_NO        // Slashed circle or crossbones
	hand        = C.SDL_SYSTEM_CURSOR_HAND      // Hand
	num_cursors = C.SDL_NUM_SYSTEM_CURSORS
}
enum TextureAccess {
	@static   = C.SDL_TEXTUREACCESS_STATIC    // Changes rarely, not lockable
	streaming = C.SDL_TEXTUREACCESS_STREAMING // Changes frequently, lockable
	target    = C.SDL_TEXTUREACCESS_TARGET    // Texture can be used as a render target
}
enum TextureModulate {
	@none = C.SDL_TEXTUREMODULATE_NONE  // 0x00000000  No modulation
	color = C.SDL_TEXTUREMODULATE_COLOR // 0x00000001 srcC = srcC * color
	alpha = C.SDL_TEXTUREMODULATE_ALPHA // 0x00000002  srcA = srcA * alpha
}
enum ThreadPriority {
	low           = C.SDL_THREAD_PRIORITY_LOW
	normal        = C.SDL_THREAD_PRIORITY_NORMAL
	high          = C.SDL_THREAD_PRIORITY_HIGH
	time_critical = C.SDL_THREAD_PRIORITY_TIME_CRITICAL
}
enum TouchDeviceType {
	invalid           = C.SDL_TOUCH_DEVICE_INVALID           // -1
	direct            = C.SDL_TOUCH_DEVICE_DIRECT            // touch screen with window-relative coordinates
	indirect_absolute = C.SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE // trackpad with absolute device coordinates
	indirect_relative = C.SDL_TOUCH_DEVICE_INDIRECT_RELATIVE // trackpad with screen cursor-relative coordinates
}
enum WindowEventID {
	@none           = C.SDL_WINDOWEVENT_NONE            // Never used
	shown           = C.SDL_WINDOWEVENT_SHOWN           // Window has been shown
	hidden          = C.SDL_WINDOWEVENT_HIDDEN          // Window has been hidden
	exposed         = C.SDL_WINDOWEVENT_EXPOSED         // Window has been exposed and should be redrawn
	moved           = C.SDL_WINDOWEVENT_MOVED           // Window has been moved to data1, data2
	resized         = C.SDL_WINDOWEVENT_RESIZED         // Window has been resized to data1xdata2
	size_changed    = C.SDL_WINDOWEVENT_SIZE_CHANGED    // The window size has changed, either as a result of an API call or through the system or user changing the window size.
	minimized       = C.SDL_WINDOWEVENT_MINIMIZED       // Window has been minimized
	maximized       = C.SDL_WINDOWEVENT_MAXIMIZED       // Window has been maximized
	restored        = C.SDL_WINDOWEVENT_RESTORED        // Window has been restored to normal size and position
	enter           = C.SDL_WINDOWEVENT_ENTER           // Window has gained mouse focus
	leave           = C.SDL_WINDOWEVENT_LEAVE           // Window has lost mouse focus
	focus_gained    = C.SDL_WINDOWEVENT_FOCUS_GAINED    // Window has gained keyboard focus
	focus_lost      = C.SDL_WINDOWEVENT_FOCUS_LOST      // Window has lost keyboard focus
	close           = C.SDL_WINDOWEVENT_CLOSE           // The window manager requests that the window be closed
	take_focus      = C.SDL_WINDOWEVENT_TAKE_FOCUS      // Window is being offered a focus (should SetWindowInputFocus() on itself or a subwindow, or ignore)
	hit_test        = C.SDL_WINDOWEVENT_HIT_TEST        // Window had a hit test that wasn't SDL_HITTEST_NORMAL.
	iccprof_changed = C.SDL_WINDOWEVENT_ICCPROF_CHANGED // The ICC profile of the window's display has changed.
	display_changed = C.SDL_WINDOWEVENT_DISPLAY_CHANGED // Window has been moved to display data1.
}
enum WindowFlags {
	fullscreen         = C.SDL_WINDOW_FULLSCREEN         // 0x00000001 fullscreen window
	opengl             = C.SDL_WINDOW_OPENGL             // 0x00000002 window usable with OpenGL context
	shown              = C.SDL_WINDOW_SHOWN              // 0x00000004 window is visible
	hidden             = C.SDL_WINDOW_HIDDEN             // 0x00000008 window is not visible
	borderless         = C.SDL_WINDOW_BORDERLESS         // 0x00000010 no window decoration
	resizable          = C.SDL_WINDOW_RESIZABLE          // 0x00000020 window can be resized
	minimized          = C.SDL_WINDOW_MINIMIZED          // 0x00000040 window is minimized
	maximized          = C.SDL_WINDOW_MAXIMIZED          // 0x00000080 window is maximized
	mouse_grabbed      = C.SDL_WINDOW_MOUSE_GRABBED      // 0x00000100 window has grabbed mouse input
	input_focus        = C.SDL_WINDOW_INPUT_FOCUS        // 0x00000200 window has input focus
	mouse_focus        = C.SDL_WINDOW_MOUSE_FOCUS        // 0x00000400 window has mouse focus
	fullscreen_desktop = C.SDL_WINDOW_FULLSCREEN_DESKTOP // ( SDL_WINDOW_FULLSCREEN | 0x00001000 )
	foreign            = C.SDL_WINDOW_FOREIGN            // 0x00000800 window not created by SDL
	allow_highdpi      = C.SDL_WINDOW_ALLOW_HIGHDPI      // 0x00002000 window should be created in high-DPI mode if supported. On macOS NSHighResolutionCapable must be set true in the application's Info.plist for this to have any effect.
	mouse_capture      = C.SDL_WINDOW_MOUSE_CAPTURE      // 0x00004000 window has mouse captured (unrelated to MOUSE_GRABBED)
	always_on_top      = C.SDL_WINDOW_ALWAYS_ON_TOP      // 0x00008000 window should always be above others
	skip_taskbar       = C.SDL_WINDOW_SKIP_TASKBAR       // 0x00010000 window should not be added to the taskbar
	utility            = C.SDL_WINDOW_UTILITY            // 0x00020000 window should be treated as a utility window
	tooltip            = C.SDL_WINDOW_TOOLTIP            // 0x00040000 window should be treated as a tooltip
	popup_menu         = C.SDL_WINDOW_POPUP_MENU         // 0x00080000 window should be treated as a popup menu
	vulkan             = C.SDL_WINDOW_VULKAN             // 0x10000000 window usable for Vulkan surface
	metal              = C.SDL_WINDOW_METAL              // 0x20000000 window usable for Metal view
	//
	input_grabbed = C.SDL_WINDOW_MOUSE_GRABBED // equivalent to SDL_WINDOW_MOUSE_GRABBED for compatibility
}
enum WindowShapeModeFlag {
	default                = C.ShapeModeDefault              // The default mode, a binarized alpha cutoff of 1.
	binarize_alpha         = C.ShapeModeBinarizeAlpha        // A binarized alpha cutoff with a given integer value.
	reverse_binarize_alpha = C.ShapeModeReverseBinarizeAlpha // A binarized alpha cutoff with a given integer value, but with the opposite comparison.
	color_key              = C.ShapeModeColorKey             // A color key is applied.
}
enum YUVConversionMode {
	jpeg      = C.SDL_YUV_CONVERSION_JPEG      // Full range JPEG
	bt601     = C.SDL_YUV_CONVERSION_BT601     // BT.601 (the default)
	bt709     = C.SDL_YUV_CONVERSION_BT709     // BT.709
	automatic = C.SDL_YUV_CONVERSION_AUTOMATIC // BT.601 for SD content, BT.709 for HD content
}
struct C.SDL_AudioCVT {
pub:
	needed       int             // Set to 1 if conversion possible
	src_format   AudioFormat     // C.SDL_AudioFormat, Source audio format
	dst_format   AudioFormat     // C.SDL_AudioFormat, Target audio format
	rate_incr    f64             // Rate conversion increment
	buf          &u8             // Buffer to hold entire audio data
	len          int             // Length of original audio buffer
	len_cvt      int             // Length of converted audio buffer
	len_mult     int             // buffer must be len*len_mult big
	len_ratio    f64             // Given len, final size is len*len_ratio
	filters      [10]AudioFilter // C.SDL_AudioFilter NULL-terminated list of filter functions
	filter_index int             // Current audio conversion function
}
struct C.SDL_AudioDeviceEvent {
pub:
	@type     EventType // SDL_AUDIODEVICEADDED, or SDL_AUDIODEVICEREMOVED
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	which     u32       // The audio device index for the ADDED event (valid until next SDL_GetNumAudioDevices() call), SDL_AudioDeviceID for the REMOVED event
	iscapture u8        // zero if an output device, non-zero if a capture device.
	padding1  u8
	padding2  u8
	padding3  u8
}
struct C.SDL_AudioSpec {
pub:
	freq     int           // DSP frequency -- samples per second
	format   AudioFormat   // C.SDL_AudioFormat Audio data format
	channels u8            // Number of channels: 1 mono, 2 stereo
	silence  u8            // Audio buffer silence value (calculated)
	samples  u16           // Audio buffer size in sample FRAMES (total samples divided by channel count)
	padding  u16           // Necessary for some compile environments
	size     u32           // Audio buffer size in bytes (calculated)
	callback AudioCallback // C.SDL_AudioCallback // Callback that feeds the audio device (NULL to use SDL_QueueAudio()).
	userdata voidptr       // Userdata passed to callback (ignored for NULL callbacks).
}
struct C.SDL_AudioStream {
}
struct C.SDL_Color {
pub mut:
	r u8
	g u8
	b u8
	a u8
}
struct C.SDL_CommonEvent {
pub:
	@type     EventType
	timestamp u32 // In milliseconds, populated using SDL_GetTicks()
}
struct C.SDL_ControllerAxisEvent {
pub:
	@type     EventType  // SDL_CONTROLLERAXISMOTION
	timestamp u32        // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID // C.SDL_JoystickID // The joystick instance id
	axis      u8         // The controller axis (SDL_GameControllerAxis)
	padding1  u8
	padding2  u8
	padding3  u8
	value     i16 // The axis value (range: -32768 to 32767)
	padding4  u16
}
struct C.SDL_ControllerButtonEvent {
pub:
	@type     EventType  // SDL_CONTROLLERBUTTONDOWN or SDL_CONTROLLERBUTTONUP
	timestamp u32        // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID // C.SDL_JoystickID // The joystick instance id
	button    u8         // The controller button (SDL_GameControllerButton)
	state     u8         // SDL_PRESSED or SDL_RELEASED
	padding1  u8
	padding2  u8
}
struct C.SDL_ControllerDeviceEvent {
pub:
	@type     EventType // SDL_CONTROLLERDEVICEADDED, SDL_CONTROLLERDEVICEREMOVED, SDL_CONTROLLERDEVICEREMAPPED, or SDL_CONTROLLERSTEAMHANDLEUPDATED
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	which     int       // The joystick device index for the ADDED event, instance id for the REMOVED or REMAPPED event
}
struct C.SDL_ControllerSensorEvent {
pub:
	@type        u32        // SDL_CONTROLLERSENSORUPDATE
	timestamp    u32        // In milliseconds, populated using SDL_GetTicks()
	which        JoystickID // The joystick instance id
	sensor       int        // The type of the sensor, one of the values of SDL_SensorType
	data         [3]f32     // Up to 3 values from the sensor, as defined in SDL_sensor.h
	timestamp_us u64        // The timestamp of the sensor reading in microseconds, if the hardware provides this information.
}
struct C.SDL_ControllerTouchpadEvent {
pub:
	@type     u32        // SDL_CONTROLLERTOUCHPADDOWN or SDL_CONTROLLERTOUCHPADMOTION or SDL_CONTROLLERTOUCHPADUP
	timestamp u32        // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID // The joystick instance id
	touchpad  int        // The index of the touchpad
	finger    int        // The index of the finger on the touchpad
	x         f32        // Normalized in the range 0...1 with 0 being on the left
	y         f32        // Normalized in the range 0...1 with 0 being at the top
	pressure  f32        // Normalized in the range 0...1
}
struct C.SDL_Cursor {
}
struct C.SDL_DisplayEvent {
pub:
	@type     u32 // SDL_DISPLAYEVENT
	timestamp u32 // In milliseconds, populated using SDL_GetTicks()
	display   u32 // The associated display index
	event     u8  // SDL_DisplayEventID
	padding1  u8  //
	padding2  u8  //
	padding3  u8  //
	data1     int // event dependent data
}
struct C.SDL_DisplayMode {
pub:
	format       u32     // pixel format
	w            int     // width, in screen coordinates
	h            int     // height, in screen coordinates
	refresh_rate int     // refresh rate (or zero for unspecified)
	driverdata   voidptr // driver-specific data, initialize to 0
}
struct C.SDL_DollarGestureEvent {
pub:
	@type      EventType // SDL_DOLLARGESTURE or SDL_DOLLARRECORD
	timestamp  u32       // In milliseconds, populated using SDL_GetTicks()
	touchId    TouchID   // The touch device id
	gestureId  GestureID
	numFingers u32
	error      f32
	x          f32 // Normalized center of gesture
	y          f32 // Normalized center of gesture
}
struct C.SDL_DropEvent {
pub:
	@type     EventType // SDL_DROPBEGIN or SDL_DROPFILE or SDL_DROPTEXT or SDL_DROPCOMPLETE
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	file      &char     // The file name, which should be freed with SDL_free(), is NULL on begin/complete
	windowID  u32       // The window that was dropped on, if any
}
union C.SDL_Event {
pub:
	@type EventType // Event type, shared with all events
	//
	common    CommonEvent             // C.SDL_CommonEvent             // Common event data
	display   DisplayEvent            // C.SDL_DisplayEvent            // Display event data
	window    WindowEvent             // C.SDL_WindowEvent             // Window event data
	key       KeyboardEvent           // C.SDL_KeyboardEvent           // Keyboard event data
	edit      TextEditingEvent        // C.SDL_TextEditingEvent        // Text editing event data
	editExt   TextEditingExtEvent     // C.SDL_TextEditingExtEvent     // Extended text editing event data
	text      TextInputEvent          // C.SDL_TextInputEvent          // Text input event data
	motion    MouseMotionEvent        // C.SDL_MouseMotionEvent        // Mouse motion event data
	button    MouseButtonEvent        // C.SDL_MouseButtonEvent        // Mouse button event data
	wheel     MouseWheelEvent         // C.SDL_MouseWheelEvent         // Mouse wheel event data
	jaxis     JoyAxisEvent            // C.SDL_JoyAxisEvent            // Joystick axis event data
	jball     JoyBallEvent            // C.SDL_JoyBallEvent            // Joystick ball event data
	jhat      JoyHatEvent             // C.SDL_JoyHatEvent             // Joystick hat event data
	jbutton   JoyButtonEvent          // C.SDL_JoyButtonEvent          // Joystick button event data
	jdevice   JoyDeviceEvent          // C.SDL_JoyDeviceEvent          // Joystick device change event data
	jbattery  JoyBatteryEvent         // C.SDL_JoyBatteryEvent         // Joystick battery event data
	caxis     ControllerAxisEvent     // C.SDL_ControllerAxisEvent     // Game Controller axis event data
	cbutton   ControllerButtonEvent   // C.SDL_ControllerButtonEvent   // Game Controller button event data
	cdevice   ControllerDeviceEvent   // C.SDL_ControllerDeviceEvent   // Game Controller device event data
	ctouchpad ControllerTouchpadEvent // C.SDL_ControllerTouchpadEvent // Game Controller touchpad event data
	csensor   ControllerSensorEvent   // C.SDL_ControllerSensorEvent   // Game Controller sensor event data
	adevice   AudioDeviceEvent        // C.SDL_AudioDeviceEvent        // Audio device event data
	sensor    SensorEvent             // C.SDL_SensorEvent             // Sensor event data
	//

	quit     QuitEvent          // C.SDL_QuitEvent          // Quit request event data
	user     UserEvent          // C.SDL_UserEvent          // Custom event data
	syswm    SysWMEvent         // C.SDL_SysWMEvent         // System dependent window event data
	tfinger  TouchFingerEvent   // C.SDL_TouchFingerEvent   // Touch finger event data
	mgesture MultiGestureEvent  // C.SDL_MultiGestureEvent  // Gesture event data
	dgesture DollarGestureEvent // C.SDL_DollarGestureEvent // Gesture event data
	drop     DropEvent          // C.SDL_DropEvent // Drag and drop event data
	// This is necessary for ABI compatibility between Visual C++ and GCC.
	// Visual C++ will respect the push pack pragma and use 52 bytes (size of
	// SDL_TextEditingEvent, the largest structure for 32-bit and 64-bit
	// architectures) for this union, and GCC will use the alignment of the
	// largest datatype within the union, which is 8 bytes on 64-bit
	// architectures.
	//
	// So... we'll add padding to force the size to be 56 bytes for both.
	//
	// On architectures where pointers are 16 bytes, this needs rounding up to
	// the next multiple of 16, 64, and on architectures where pointers are
	// even larger the size of SDL_UserEvent will dominate as being 3 pointers.
	padding [56]u8 // TODO v_event_padding_size??
	// Uint8 padding[sizeof(void *) <= 8 ? 56 : sizeof(void *) == 16 ? 64 : 3 * sizeof(void *)];
}
struct C.SDL_FPoint {
pub mut:
	x f32
	y f32
}
struct C.SDL_FRect {
pub mut:
	x f32
	y f32
	w f32
	h f32
}
struct C.SDL_Finger {
pub:
	id       FingerID // C.SDL_FingerID
	x        f32
	y        f32
	pressure f32
}
struct C.SDL_GameController {
}
struct C.SDL_GameControllerButtonBind {
pub:
	bindType GameControllerBindType // C.SDL_GameControllerBindType
	value    Value
	hat      Hat
}
struct C.SDL_Haptic {
}
struct C.SDL_HapticCondition {
pub mut:
	@type       u16             // SDL_HAPTIC_SPRING, SDL_HAPTIC_DAMPER,                                  SDL_HAPTIC_INERTIA or SDL_HAPTIC_FRICTION
	direction   HapticDirection // Direction of the effect - Not used ATM.
	length      u32             // Duration of the effect.
	delay       u16             // Delay before starting the effect.
	button      u16             // Button that triggers the effect.
	interval    u16             // How soon it can be triggered again after button.
	right_sat   [3]u16          // Level when joystick is to the positive side; max 0xFFFF.
	left_sat    [3]u16          // Level when joystick is to the negative side; max 0xFFFF.
	right_coeff [3]i16          // How fast to increase the force towards the positive side.
	left_coeff  [3]i16          // How fast to increase the force towards the negative side.
	deadband    [3]u16          // Size of the dead zone; max 0xFFFF: whole axis-range when 0-centered.
	center      [3]i16          // Position of the dead zone.
}
struct C.SDL_HapticConstant {
pub mut:
	@type         u16             // SDL_HAPTIC_CONSTANT
	direction     HapticDirection // Direction of the effect.
	length        u32             // Duration of the effect.
	delay         u16             // Delay before starting the effect.
	button        u16             // Button that triggers the effect.
	interval      u16             // How soon it can be triggered again after button.
	level         i16             // Strength of the constant effect.
	attack_length u16             // Duration of the attack.
	attack_level  u16             // Level at the start of the attack.
	fade_length   u16             // Duration of the fade.
	fade_level    u16             // Level at the end of the fade.
}
struct C.SDL_HapticCustom {
pub mut:
	@type         u16             // SDL_HAPTIC_CUSTOM
	direction     HapticDirection // Direction of the effect.
	length        u32             // Duration of the effect.
	delay         u16             // Delay before starting the effect.
	button        u16             // Button that triggers the effect.
	interval      u16             // How soon it can be triggered again after button.
	channels      u8              // Axes to use, minimum of one.
	period        u16             // Sample periods.
	samples       u16             // Amount of samples.
	data          &u16            // Should contain channels*samples items.
	attack_length u16             // Duration of the attack.
	attack_level  u16             // Level at the start of the attack.
	fade_length   u16             // Duration of the fade.
	fade_level    u16             // Level at the end of the fade.
}
struct C.SDL_HapticDirection {
pub mut:
	@type u8 // The type of encoding
	dir   [3]int
}
struct C.SDL_HapticLeftRight {
pub mut:
	@type           u16 // SDL_HAPTIC_LEFTRIGHT
	length          u32 // Duration of the effect in milliseconds.
	large_magnitude u16 // Control of the large controller motor.
	small_magnitude u16 // Control of the small controller motor.
}
struct C.SDL_HapticPeriodic {
pub mut:
	@type         u16             // SDL_HAPTIC_SINE, SDL_HAPTIC_LEFTRIGHT, SDL_HAPTIC_TRIANGLE, SDL_HAPTIC_SAWTOOTHUP or SDL_HAPTIC_SAWTOOTHDOWN
	direction     HapticDirection // Direction of the effect.
	length        u32             // Duration of the effect.
	delay         u16             // Delay before starting the effect.
	button        u16             // Button that triggers the effect.
	interval      u16             // How soon it can be triggered again after button.
	period        u16             // Period of the wave.
	magnitude     i16             // Peak value; if negative, equivalent to 180 degrees extra phase shift.
	offset        i16             // Mean value of the wave.
	phase         u16             // Positive phase shift given by hundredth of a degree.
	attack_length u16             // Duration of the attack.
	attack_level  u16             // Level at the start of the attack.
	fade_length   u16             // Duration of the fade.
	fade_level    u16             // Level at the end of the fade.
}
struct C.SDL_HapticRamp {
pub mut:
	@type         u16             // SDL_HAPTIC_RAMP
	direction     HapticDirection // Direction of the effect.
	length        u32             // Duration of the effect.
	delay         u16             // Delay before starting the effect.
	button        u16             // Button that triggers the effect.
	interval      u16             // How soon it can be triggered again after button.
	start         i16             // Beginning strength level.
	end           i16             // Ending strength level.
	attack_length u16             // Duration of the attack.
	attack_level  u16             // Level at the start of the attack.
	fade_length   u16             // Duration of the fade.
	fade_level    u16             // Level at the end of the fade.
}
struct C.SDL_JoyAxisEvent {
pub:
	@type     EventType  // SDL_JOYAXISMOTION
	timestamp u32        // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID // The joystick instance id
	axis      u8         // The joystick axis index
	padding1  u8
	padding2  u8
	padding3  u8
	value     i16 // The axis value (range: -32768 to 32767)
	padding4  u16
}
struct C.SDL_JoyBallEvent {
pub:
	@type     EventType  // SDL_JOYBALLMOTION
	timestamp u32        // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID // C.SDL_JoystickID // The joystick instance id
	ball      u8         // The joystick trackball index
	padding1  u8
	padding2  u8
	padding3  u8
	xrel      i16 // The relative motion in the X direction
	yrel      i16 // The relative motion in the Y direction
}
struct C.SDL_JoyBatteryEvent {
	@type     u32                // SDL_JOYBATTERYUPDATED
	timestamp u32                // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID         // The joystick instance id
	level     JoystickPowerLevel // The joystick battery level
}
struct C.SDL_JoyButtonEvent {
pub:
	@type     EventType  // SDL_JOYBUTTONDOWN or SDL_JOYBUTTONUP
	timestamp u32        // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID // C.SDL_JoystickID // The joystick instance id
	button    u8         // The joystick button index
	state     u8         // SDL_PRESSED or SDL_RELEASED
	padding1  u8
	padding2  u8
}
struct C.SDL_JoyDeviceEvent {
pub:
	@type     EventType // SDL_JOYDEVICEADDED or SDL_JOYDEVICEREMOVED
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	which     int       // The joystick device index for the ADDED event, instance id for the REMOVED event
}
struct C.SDL_JoyHatEvent {
pub:
	@type     EventType  // SDL_JOYHATMOTION
	timestamp u32        // In milliseconds, populated using SDL_GetTicks()
	which     JoystickID // C.SDL_JoystickID // The joystick instance id
	hat       u8         // The joystick hat index
	value     u8         // The hat position value.
	// See also: SDL_HAT_LEFTUP SDL_HAT_UP SDL_HAT_RIGHTUP
	// See also: SDL_HAT_LEFT SDL_HAT_CENTERED SDL_HAT_RIGHT
	// See also: SDL_HAT_LEFTDOWN SDL_HAT_DOWN SDL_HAT_RIGHTDOWN
	// Note that zero means the POV is centered.
	padding1 u8
	padding2 u8
}
struct C.SDL_Joystick {
}
struct C.SDL_KeyboardEvent {
pub:
	@type     EventType // SDL_KEYDOWN or SDL_KEYUP
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The window with keyboard focus, if any
	state     u8        // SDL_PRESSED or SDL_RELEASED
	repeat    u8        // Non-zero if this is a key repeat
	padding2  u8
	padding3  u8
	keysym    Keysym // The key that was pressed or released
}
struct C.SDL_Keysym {
pub:
	scancode Scancode // C.SDL_Scancode // SDL physical key code - see SDL_Scancode for details
	sym      Keycode  // C.SDL_Keycode // SDL virtual key code - see SDL_Keycode for details
	mod      u16      // current key modifiers
	unused   u32      //
}
struct C.SDL_Locale {
pub:
	language &char // const, A language name, like "en" for English.
	country  &char // const, A country, like "US" for America. Can be NULL.
}
struct C.SDL_MessageBoxButtonData {
pub:
	flags    u32   // SDL_MessageBoxButtonFlags
	buttonid int   // User defined button id (value returned via SDL_ShowMessageBox)
	text     &char // The UTF-8 button text
}
struct C.SDL_MessageBoxColor {
pub:
	r u8
	g u8
	b u8
}
struct C.SDL_MessageBoxColorScheme {
pub:
	colors [6]MessageBoxColor
}
struct C.SDL_MessageBoxData {
pub:
	flags       u32     // SDL_MessageBoxFlags
	window      &Window // Parent window, can be NULL
	title       &char   // UTF-8 title
	message     &char   // UTF-8 message text
	numbuttons  int
	buttons     &MessageBoxButtonData  // C.SDL_MessageBoxButtonData
	colorScheme &MessageBoxColorScheme // C.SDL_MessageBoxColorScheme, SDL_MessageBoxColorScheme, can be NULL to use system settings
}
struct C.SDL_MouseButtonEvent {
pub:
	@type     EventType // SDL_MOUSEBUTTONDOWN or SDL_MOUSEBUTTONUP
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The window with mouse focus, if any
	which     u32       // The mouse instance id, or SDL_TOUCH_MOUSEID
	button    u8        // The mouse button index
	state     u8        // SDL_PRESSED or SDL_RELEASED
	clicks    u8        // 1 for single-click, 2 for double-click, etc.
	padding1  u8
	x         int // X coordinate, relative to window
	y         int // Y coordinate, relative to window
}
struct C.SDL_MouseMotionEvent {
pub:
	@type     EventType // SDL_MOUSEMOTION
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The window with mouse focus, if any
	which     u32       // The mouse instance id, or SDL_TOUCH_MOUSEID
	state     u32       // The current button state
	x         int       // X coordinate, relative to window
	y         int       // Y coordinate, relative to window
	xrel      int       // The relative motion in the X direction
	yrel      int       // The relative motion in the Y direction
}
struct C.SDL_MouseWheelEvent {
pub:
	@type     EventType // SDL_MOUSEWHEEL
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The window with mouse focus, if any
	which     u32       // The mouse instance id, or SDL_TOUCH_MOUSEID
	x         int       // The amount scrolled horizontally, positive to the right and negative to the left
	y         int       // The amount scrolled vertically, positive away from the user and negative toward the user
	direction u32       // Set to one of the SDL_MOUSEWHEEL_* defines. When FLIPPED the values in X and Y will be opposite. Multiply by -1 to change them back
	preciseX  f32       // The amount scrolled horizontally, positive to the right and negative to the left, with float precision (added in 2.0.18)
	preciseY  f32       // The amount scrolled vertically, positive away from the user and negative toward the user, with float precision (added in 2.0.18)
	mouseX    int       // X coordinate, relative to window (added in 2.26.0)
	mouseY    int       // Y coordinate, relative to window (added in 2.26.0)
}
struct C.SDL_MultiGestureEvent {
pub:
	@type      EventType // SDL_MULTIGESTURE
	timestamp  u32       // In milliseconds, populated using SDL_GetTicks()
	touchId    TouchID   // The touch device id
	dTheta     f32
	dDist      f32
	x          f32
	y          f32
	numFingers u16
	padding    u16
}
struct C.SDL_Palette {
pub mut:
	ncolors  int
	colors   &Color
	version  u32
	refcount int
}
struct C.SDL_PixelFormat {
pub:
	format        Format
	palette       &Palette
	BitsPerPixel  u8
	BytesPerPixel u8
	padding       [2]u8
	Rmask         u32
	Gmask         u32
	Bmask         u32
	Amask         u32
	Rloss         u8
	Gloss         u8
	Bloss         u8
	Aloss         u8
	Rshift        u8
	Gshift        u8
	Bshift        u8
	Ashift        u8
	refcount      int
	next          &PixelFormat
}
struct C.SDL_Point {
pub mut:
	x int
	y int
}
struct C.SDL_QuitEvent {
pub:
	@type     EventType // SDL_QUIT
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
}
struct C.SDL_RWops {
pub:
	// Returns the size of the file in this rwops, or -1 if unknown
	// `Sint64 (SDLCALL * size) (struct SDL_RWops * context);`
	size fn (context &C.SDL_RWops) i64
	// Seeks to `offset` relative to `whence`, one of stdio's whence values:
	// RW_SEEK_SET, RW_SEEK_CUR, RW_SEEK_END
	//
	// returns the final offset in the data stream, or -1 on error.
	// `Sint64 (SDLCALL * seek) (struct SDL_RWops * context, Sint64 offset, int whence);`
	seek fn (context &C.SDL_RWops, offset i64, whence int) i64
	// Reads up to `maxnum` objects each of size `size` from the data
	// stream to the area pointed at by `ptr`.
	//
	// returns the number of objects read, or 0 at error or end of file.
	// `size_t (SDLCALL * read) (struct SDL_RWops * context, void *ptr, size_t size, size_t maxnum);`
	read fn (context &C.SDL_RWops, ptr voidptr, size usize, maxnum usize) usize
	// Writes exactly `num` objects each of size `size` from the area
	// pointed at by `ptr` to data stream.
	//
	// returns the number of objects written, or 0 at error or end of file.
	// `size_t (SDLCALL * write) (struct SDL_RWops * context, const void *ptr, size_t size, size_t num);`
	write fn (context &C.SDL_RWops, const_ptr voidptr, size usize, num usize) usize
	// Closes and frees an allocated SDL_RWops structure.
	//
	// returns 0 if successful or -1 on write error when flushing data.
	// `int (SDLCALL * close) (struct SDL_RWops * context);`
	close fn (context &C.SDL_RWops) int

	@type u32
}
struct C.SDL_Rect {
pub mut:
	x int
	y int
	w int
	h int
}
struct C.SDL_Renderer {
}
struct C.SDL_RendererInfo {
pub:
	name                &char   // The name of the renderer
	flags               u32     // Supported SDL_RendererFlags
	num_texture_formats u32     // The number of available texture formats
	texture_formats     [16]u32 // The available texture formats
	max_texture_width   int     // The maximum texture width
	max_texture_height  int     // The maximum texture height
}
struct C.SDL_Sensor {
}
struct C.SDL_SensorEvent {
pub:
	@type        u32    // SDL_SENSORUPDATE
	timestamp    u32    // In milliseconds, populated using SDL_GetTicks()
	which        int    // The instance ID of the sensor
	data         [6]f32 // Up to 6 values from the sensor - additional values can be queried using SDL_SensorGetData()
	timestamp_us u64    // The timestamp of the sensor reading in microseconds, if the hardware provides this information.
}
struct C.SDL_Surface {
pub:
	flags  u32                // Read-only
	format &C.SDL_PixelFormat // Read-only
	w      int                // Read-only
	h      int                // Read-only
	pitch  int                // Read-only
	// information needed for surfaces requiring locks
	locked int // Read-only
	// list of BlitMap that hold a reference to this surface
	// list_blitmap voidptr // Private
	// clipping information
	clip_rect C.SDL_Rect // Read-only
	// @map &BlitMap // Private
	// Reference count -- used when freeing surface
	refcount int // Read-mostly
pub mut:
	pixels voidptr // Read-write
	// Application data associated with the surface
	userdata voidptr // Read-write
}
struct C.SDL_SysWMEvent {
pub:
	@type     EventType // SDL_SYSWMEVENT
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	msg       &SysWMmsg // driver dependent data, defined in SDL_syswm.h
}
struct C.SDL_SysWMmsg {
}
struct C.SDL_TextEditingEvent {
pub:
	@type     EventType // SDL_TEXTEDITING
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The window with keyboard focus, if any
	text      [32]char  // text[SDL_TEXTEDITINGEVENT_TEXT_SIZE] char
	start     int       // The start cursor of selected editing text
	length    int       // The length of selected editing text
}
struct C.SDL_TextEditingExtEvent {
	@type     u32   // SDL_TEXTEDITING_EXT
	timestamp u32   // In milliseconds, populated using SDL_GetTicks()
	windowID  u32   // The window with keyboard focus, if any
	text      &char // The editing text, which should be freed with SDL_free(), and will not be NULL
	start     int   // The start cursor of selected editing text
	length    int   // The length of selected editing text
}
struct C.SDL_TextInputEvent {
pub:
	@type     EventType // SDL_TEXTINPUT
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The window with keyboard focus, if any
	text      [32]char  // text[SDL_TEXTINPUTEVENT_TEXT_SIZE] char
}
struct C.SDL_Texture {
}
struct C.SDL_Thread {
}
struct C.SDL_TouchFingerEvent {
pub:
	@type     EventType // SDL_FINGERMOTION or SDL_FINGERDOWN or SDL_FINGERUP
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	touchId   TouchID   // The touch device id
	fingerId  FingerID
	x         f32 // Normalized in the range 0...1
	y         f32 // Normalized in the range 0...1
	dx        f32 // Normalized in the range -1...1
	dy        f32 // Normalized in the range -1...1
	pressure  f32 // Normalized in the range 0...1
	windowID  u32 // The window underneath the finger, if any
}
struct C.SDL_UserEvent {
pub:
	@type     EventType // SDL_USEREVENT through SDL_LASTEVENT-1
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The associated window if any
	code      int       // User defined event code
	data1     voidptr   // User defined data pointer
	data2     voidptr   // User defined data pointer
}
struct C.SDL_Vertex {
	position  FPoint // Vertex position, in SDL_Renderer coordinates
	color     Color  // Vertex color
	tex_coord FPoint // Normalized texture coordinates, if needed
}
struct C.SDL_VirtualJoystickDesc {
pub mut:
	version     u16     // `SDL_VIRTUAL_JOYSTICK_DESC_VERSION`
	@type       u16     // `SDL_JoystickType`
	naxes       u16     // the number of axes on this joystick
	nbuttons    u16     // the number of buttons on this joystick
	nhats       u16     // the number of hats on this joystick
	vendor_id   u16     // the USB vendor ID of this joystick
	product_id  u16     // the USB product ID of this joystick
	padding     u16     // unused
	button_mask u32     // A mask of which buttons are valid for this controllere.g. (1 << SDL_CONTROLLER_BUTTON_A)
	axis_mask   u32     // A mask of which axes are valid for this controllere.g. (1 << SDL_CONTROLLER_AXIS_LEFTX)
	name        &char   // the name of the joystick
	userdata    voidptr // User data pointer passed to callbacks
	//
	Update         fn (userdata voidptr)                   // Called when the joystick state should be updated
	SetPlayerIndex fn (userdata voidptr, player_index int) // Called when the player index is set
	Rumble         fn (userdata voidptr, low_frequency_rumble u16, high_frequency_rumble u16) // Implements SDL_JoystickRumble()
	RumbleTrigger  fn (userdata voidptr, left_rumble u16, right_rumble u16)                   // Implements SDL_JoystickRumbleTriggers()
	SetLED         fn (userdata voidptr, red u8, green u8, blue u8)    // Implements SDL_JoystickSetLED()
	SendEffect     fn (userdata voidptr, const_data voidptr, size int) // Implements SDL_JoystickSendEffect()
}
struct C.SDL_Window {
}
struct C.SDL_WindowEvent {
pub:
	@type     EventType // SDL_WINDOWEVENT
	timestamp u32       // In milliseconds, populated using SDL_GetTicks()
	windowID  u32       // The associated window
	event     u8        // SDL_WindowEventID
	padding1  u8
	padding2  u8
	padding3  u8
	data1     int // event dependent data
	data2     int // event dependent data
}
struct C.SDL_WindowShapeMode {
pub:
	mode       WindowShapeModeFlag // The mode of these window-shape parameters.
	parameters WindowShapeParams   // Window-shape parameters.
}
struct C.SDL_atomic_t {
pub:
	value int
}
struct C.SDL_cond {
}
struct C.SDL_hid_device {
}
struct C.SDL_hid_device_info {
	// Platform-specific device path
	path &char
	// Device Vendor ID
	vendor_id u16
	// Device Product ID
	product_id u16
	// Serial Number
	serial_number &u16 // NOTE: wchar_t* in C
	// Device Release Number in binary-coded decimal,
	// also known as Device Version Number
	release_number u16
	// Manufacturer String
	manufacturer_string &u16 // NOTE: wchar_t* in C
	// Product string
	product_string &u16 // NOTE: wchar_t* in C
	// Usage Page for this Device/Interface
	// (Windows/Mac only).
	usage_page u16
	// Usage for this Device/Interface
	// (Windows/Mac only).
	usage u16
	// The USB interface which this logical device
	// represents.
	//
	// * Valid on both Linux implementations in all cases.
	// * Valid on the Windows implementation only if the device
	//   contains more than one interface.
	interface_number int
	// Additional information about the USB interface.
	// Valid on libusb and Android implementations.
	interface_class    int
	interface_subclass int
	interface_protocol int
	// Pointer to the next device
	next &HidDeviceInfo
}
struct C.SDL_iconv_t {
}
struct C.SDL_mutex {
}
struct C.SDL_sem {
}
struct C.SDL_version {
pub:
	major u8 // major version
	minor u8 // minor version
	patch u8 // update version
}
fn (ver C.SDL_version) str() string
struct C.va_list {}
struct Hat {
pub:
	hat      int
	hat_mask int
}
union Value {
pub:
	button int
	axis   int
}
