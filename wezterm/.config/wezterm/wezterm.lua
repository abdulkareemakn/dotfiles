-- Wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Colorscheme
config.color_scheme = "catppuccin-mocha"

-- Fonts
config.font = wezterm.font("CaskaydiaCove Nerd Font", { weight = "DemiBold", stretch = "Normal", style = "Normal" })

config.harfbuzz_features = { "ss19", "ss20" }

config.font_size = 12.5

config.line_height = 1.0

-- Cursor
config.default_cursor_style = "SteadyBar"
config.cursor_thickness = "2"
-- config.default_cursor_style = "BlinkingBlock"

-- Title Bar
config.window_decorations = "RESIZE"

-- Tab Bar
config.hide_tab_bar_if_only_one_tab = true

-- Opacity
config.window_background_opacity = 1.0

-- Keybindings
config.keys = {
	-- Full Screen
	{
		key = "n",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ToggleFullScreen,
	},

	-- Panes
	{
		key = "F2",
		mods = "",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

-- Mouse keybindings
config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

-- Encoding
config.enable_csi_u_key_encoding = true

-- and finally, return the configuration to wezterm
return config
