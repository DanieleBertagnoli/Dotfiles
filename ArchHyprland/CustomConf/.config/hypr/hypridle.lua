-- By: Daniele Bertagnoli

--   _    ___     _______  _____  _____ _____  _      ______ 
--  | |  | \ \   / /  __ \|  __ \|_   _|  __ \| |    |  ____|
--  | |__| |\ \_/ /| |__) | |__) | | | | |  | | |    | |__   
--  |  __  | \   / |  ___/|  _  /  | | | |  | | |    |  __|  
--  | |  | |  | |  | |    | | \ \ _| |_| |__| | |____| |____ 
--  |_|  |_|  |_|  |_|    |_|  \_\_____|_____/|______|______|

-- This file is the hypridle configuration file

hl.config({
    general = {
        lock_cmd = "pidof hyprlock || hyprlock",
        -- Avoid starting multiple hyprlock instances
        before_sleep_cmd = "loginctl lock-session",
        -- Lock before suspend
        after_sleep_cmd = "hyprctl dispatch 'hl.dsp.dpms( { action=enable } )'",
        -- To avoid having to press a key twice to turn on the display.
    },
})

-- Dimming the screen due to inactivity

hl.config({
    listener = {
        timeout = 150, -- 2.5 min
        on_timeout = "brightnessctl -s set 10", -- Set monitor backlight to minimum
        on_resume = "brightnessctl -r", -- Restore monitor backlight
    },
})

-- Turn off keyboard backlight

hl.config({
    listener = {
        timeout = 150, -- 2.5min
        on_timeout = "brightnessctl -sd rgb:kbd_backlight set 0", -- Turn off keyboard backlight
        on_resume = "brightnessctl -rd rgb:kbd_backlight", -- Restore keyboard backlight
    },
})

-- Lock the screen after inactivity

hl.config({
    listener = {
        timeout = 300, -- 5min
        on_timeout = "loginctl lock-session",
    },
})

-- Turn off the disaplay after inactivity

hl.config({
    listener = {
        timeout = 330, -- 5.5min
        on_timeout = "hyprctl dispatch 'hl.dsp.dpms( { action=disable } )'",
        on_resume = "hyprctl dispatch 'hl.dsp.dpms( { action=enable } )' && brightnessctl -r",
    },
})

-- Suspend pc

hl.config({
    listener = {
        timeout = 7200, -- 2h
        on_timeout = "systemctl suspend",
    },
})
