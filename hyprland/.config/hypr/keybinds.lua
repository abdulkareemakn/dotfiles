local mainMod = "SUPER"

-- Basic keybindings
hl.bind(mainMod .. " + return", hl.dsp.exec_cmd("kitty --listen-on unix:/home/tmtaxman/.config/kitty/kitty.sock"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("chromium"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("exit"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("nautilus"))
hl.bind(mainMod .. " + U", hl.dsp.window.float({ action = "toggle" }))

-- Launchers
-- hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("~/.config/rofi/scripts/launcher_t4"))
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("vicinae toggle"))
-- hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("rofi -show drun"))
-- hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("fuzzel"))

-- Dwindle layouts
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + h", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + j", hl.dsp.window.move({ direction = "d" }))
hl.bind(mainMod .. " + k", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + l", hl.dsp.window.move({ direction = "r" }))

-- Switch workspaces with mainMod + [0-9]
for i = 1, 9 do
	hl.bind(mainMod .. " + " .. tostring(i), hl.dsp.focus({ workspace = i }))
end
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 9 do
	hl.bind(mainMod .. " + SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%+ --limit 1.0"),
	{ locked = true, repeat_bind = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"),
	{ locked = true, repeat_bind = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeat_bind = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeat_bind = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeat_bind = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeat_bind = true })

-- Playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- TUIs
-- hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("kitty --class bluetuith -e bluetuith"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("kitty --class bluetui -e bluetui"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("kitty --class clipse -e clipse"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("kitty --class wlctl -e wlctl"))

-- Screenshots
-- hl.bind("Print", hl.dsp.exec_cmd("flameshot gui"))
-- hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m window -m active -z"))
-- hl.bind("SHIFT + Print", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m region -z"))

-- Utilities
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty -e btop"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("hyprpicker --autocopy --format=hex"))
hl.bind("ALT + F4", hl.dsp.exec_cmd("wlogout"))
hl.bind(
	mainMod .. " + CTRL + P",
	hl.dsp.exec_cmd("/home/abdulkareem/.config/rofi/applets/bin/power-profiles-daemon.sh")
)
