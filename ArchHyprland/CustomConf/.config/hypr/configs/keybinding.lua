-- By: Daniele Bertagnoli

--  _  __________     ______ _____ _   _ _____ _____ _   _  _____  _____ 
-- | |/ /  ____\ \   / /  _ \_   _| \ | |  __ \_   _| \ | |/ ____|/ ____|
-- | ' /| |__   \ \_/ /| |_) || | |  \| | |  | || | |  \| | |  __| (___  
-- |  < |  __|   \   / |  _ < | | | . ` | |  | || | | . ` | | |_ |\___ \ 
-- | . \| |____   | |  | |_) || |_| |\  | |__| || |_| |\  | |__| |____) |
-- |_|\_\______|  |_|  |____/_____|_| \_|_____/_____|_| \_|\_____|_____/ 


-- SUPER KEY

local mainMod = "SUPER"
local mainModRelease = "SUPER_L"

-- Applications

hl.bind(mainMod .. " + " .. "RETURN", hl.dsp.exec_cmd("~/.config/dotfiles/scripts/applications.sh \"run\" \"terminal\"")) -- Open the terminal
hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd("~/.config/dotfiles/scripts/applications.sh \"run\" \"browser\"")) -- Open the browser
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("~/.config/dotfiles/scripts/applications.sh \"run\" \"filemanager\"")) -- Open the filemanager

-- Windows

hl.bind(mainMod .. " + " .. "Q", hl.dsp.window.close()) -- Kill active window
hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen()) -- Set active window to fullscreen
hl.bind(mainMod .. " + " .. "T", hl.dsp.window.float()) -- Toggle active windows into floating mode
hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ direction = "left" })) -- Move focus left
hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ direction = "right" })) -- Move focus right
hl.bind(mainMod .. " + " .. "up", hl.dsp.focus({ direction = "up" })) -- Move focus up
hl.bind(mainMod .. " + " .. "down", hl.dsp.focus({ direction = "down" })) -- Move focus down
hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true }) -- Move window with the mouse
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true }) -- Resize window with the mouse

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "right", hl.dsp.window.resize({x=30, y=0, relative=true}), {repeating = true}) -- Increase window width with keyboard
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "left", hl.dsp.window.resize({x=-30, y=0, relative=true}), {repeating = true}) -- Reduce window width with keyboard
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "down", hl.dsp.window.resize({x=0, y=30, relative=true}), {repeating = true}) -- Increase window height with keyboard
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "up", hl.dsp.window.resize({x=0, y=-30, relative=true}), {repeating = true}) -- Reduce window height with keyboard
hl.bind(mainMod .. " + " .. "G", hl.dsp.group.toggle()) -- Toggle window group

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "down", hl.dsp.window.move({ direction = "d" }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "up", hl.dsp.window.move({ direction = "u" }))

-- Actions
hl.bind("PRINT", hl.dsp.exec_cmd("~/.config/dotfiles/scripts/screenshot.sh")) -- Take a screenshot
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "Q", hl.dsp.exec_cmd("wlogout")) -- Start wlogout
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "W", hl.dsp.exec_cmd("waypaper")) -- Open wallpaper selector
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "RETURN", hl.dsp.exec_cmd("rofi -show drun -replace -i")) -- Open application launcher
hl.bind(mainMod .. " + " .. "L", hl.dsp.exec_cmd("hyprlock")) -- Lock the screen 

-- Workspaces
hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 })) -- Open workspace 1
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 })) -- Open workspace 2
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 })) -- Open workspace 3
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 })) -- Open workspace 4
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 })) -- Open workspace 5
hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 })) -- Open workspace 6
hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 })) -- Open workspace 7
hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 })) -- Open workspace 8
hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 })) -- Open workspace 9
hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 })) -- Open workspace 10
hl.bind("ALT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 })) -- Move active window to workspace 1
hl.bind("ALT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 })) -- Move active window to workspace 2
hl.bind("ALT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 })) -- Move active window to workspace 3
hl.bind("ALT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 })) -- Move active window to workspace 4
hl.bind("ALT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 })) -- Move active window to workspace 5
hl.bind("ALT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 })) -- Move active window to workspace 6
hl.bind("ALT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 })) -- Move active window to workspace 7
hl.bind("ALT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 })) -- Move active window to workspace 8
hl.bind("ALT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 })) -- Move active window to workspace 9
hl.bind("ALT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 })) -- Move active window to workspace 10
hl.bind(mainMod .. " + " .. "Tab", hl.dsp.focus({ workspace = "m+1" })) -- Open next workspace
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "Tab", hl.dsp.focus({ workspace = "m-1" })) -- Open previous workspace
hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" })) -- Open next workspace
hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" })) -- Open previous workspace

-- Fn keys

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -q s +10%"), { repeating = true, locked = true, }) -- Increase brightness by 10%
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -q s 10%-"), { repeating = true, locked = true, }) -- Reduce brightness by 10%
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +5%"), { repeating = true, locked = true, }) -- Increase volume by 5%
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -5%"), { repeating = true, locked = true, }) -- Reduce volume by 5%
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle")) -- Toggle mute
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause")) -- Audio play pause
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause")) -- Audio pause
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next")) -- Audio next
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous")) -- Audio previous
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle")) -- Toggle microphone
hl.bind(mainMod .. " + " .. "L", hl.dsp.exec_cmd("hyprlock")) -- Open screenlock
hl.bind("code:238", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s +10")) -- Increase keyboard backlight
hl.bind("code:237", hl.dsp.exec_cmd("brightnessctl -d smc::kbd_backlight s 10-")) -- Reduce keyboard backlight
