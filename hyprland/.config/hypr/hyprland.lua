require("keybinds")

hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "1.2" })

local terminal = "kitty"
local fileManager = "nautilus"
local menu = "vicinae"

hl.on("hyprland.start", function()
	hl.exec_cmd("darkman run")

	hl.exec_cmd("vicinae server")

	hl.exec_cmd("qs -c noctalia-shell")

	hl.exec_cmd("awww-daemon & awww img ~/Pictures/snow-night-moon.png --transition-type none")
	-- hl.exec_cmd("waybar")
	hl.exec_cmd("clipse -listen")
	-- hl.exec_cmd("mako")
	hl.exec_cmd("playerctld")

	hl.exec_cmd("hyprctl setcursor capitaine-cursors-light 24")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("hyprsunset -t 3500")
end)

hl.env("HYPRCURSOR_SIZE", 24)
hl.env("XCURSOR_SIZE", 24)

hl.config({
	general = {
		border_size = 1,
		gaps_in = 5,
		gaps_out = 10,
		col = {
			active_border = "rgba(8e909977)",
			inactive_border = "rgba(43474e55)",
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		rounding = 10,
		rounding_power = 2,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, spring = "easy", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })

hl.config({
	dwindle = {
		preserve_split = true,
	},
})

hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

hl.config({
	misc = {
		background_color = "rgba(111318FF)",
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
})

hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		numlock_by_default = true,

		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.window_rule({
	match = { pin = true },
	border_color = "rgba(a8c8ffAA) rgba(a8c8ff77)",
})

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
	match = { class = ".*" },
	suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-- flameshot multi-display fix
hl.window_rule({
	match = {
		class = "flameshot",
		title = "flameshot",
	},
	move = { 0, 0 },
	pin = true,
	fullscreen_state = "0 0",
	float = true,
})

-- Clipse Floating Window
hl.window_rule({
	match = { class = "clipse" },
	float = true,
	size = { 720, 720 },
	stay_focused = true,
})

hl.window_rule({
	match = { class = "wlctl" },
	float = true,
	size = { 960, 840 },
	stay_focused = true,
})

hl.window_rule({
	match = { class = "bluetui" },
	float = true,
	size = { 960, 840 },
	stay_focused = true,
})

hl.layer_rule({
	name = "vicinae-blur",
	match = { namespace = "vicinae" },
	blur = true,
	ignore_alpha = 0,
})

hl.layer_rule({
	name = "vicinae-no-animation",
	match = { namespace = "vicinae" },
	no_anim = true,
})
