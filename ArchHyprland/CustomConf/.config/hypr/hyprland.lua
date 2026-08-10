-- By: Daniele Bertagnoli

--  _    ___     _______  _____  _               _   _ _____  
-- | |  | \ \   / /  __ \|  __ \| |        /\   | \ | |  __ \ 
-- | |__| |\ \_/ /| |__) | |__) | |       /  \  |  \| | |  | |
-- |  __  | \   / |  ___/|  _  /| |      / /\ \ | . ` | |  | |
-- | |  | |  | |  | |    | | \ \| |____ / ____ \| |\  | |__| |
-- |_|  |_|  |_|  |_|    |_|  \_\______/_/    \_\_| \_|_____/ 

-- IMPORTANT NOTE: Do not modify this file, to customize the system modify the single files

-- Monitor configuration
local monitors = require("configs.monitors")

-- Commands to be run at system startup
local startup = require("configs.startup")

-- Set cursor
local cursor = require("configs.cursor")

-- Set ENV variables
local environment_vars = require("configs.environment_vars")

-- Keyboard configuration
local keyboard = require("configs.keyboard")

-- Windows styling
local window = require("configs.window")

-- Layout configuration
local layout = require("configs.layout")

-- General Hyprland settings
local misc = require("configs.misc")

-- Keybindings
local keybinding = require("configs.keybinding")

-- Custom window rules
local windowrule = require("configs.windowrule")

-- Animations
local animation = require("configs.animation")

-- Workspaces
local workspaces = require("configs.workspaces")

-- Environment for xdg-desktop-portal-hyprland
hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
