-- Wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "MaterialDesignColors"

-- Cursor
config.default_cursor_style = "SteadyBar"

-- Title Bar
config.window_decorations = "RESIZE"

-- Tab Bar
config.hide_tab_bar_if_only_one_tab = true

-- Opacity
config.window_background_opacity = 1.0

-- Font
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Medium", italic = false })

-- Full Screen
config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

-- Panes
config.keys = {
	-- This will create a new split and run your default program inside it
	{
		key = "F2",
		mods = "",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

-- and finally, return the configuration to wezterm
return config
