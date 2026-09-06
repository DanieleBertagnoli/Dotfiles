-- By: Daniele Bertagnoli

--   _____ _______       _____ _______ _    _ _____  
--  / ____|__   __|/\   |  __ \__   __| |  | |  __ \ 
-- | (___    | |  /  \  | |__) | | |  | |  | | |__) |
--  \___ \   | | / /\ \ |  _  /  | |  | |  | |  ___/ 
--  ____) |  | |/ ____ \| | \ \  | |  | |__| | |     
-- |_____/   |_/_/    \_\_|  \_\ |_|   \____/|_|     

hl.on("hyprland.start", function()
    hl.exec_cmd("~/.config/waybar/launch.sh") -- Launch Waybar
    hl.exec_cmd("waypaper --restore") -- Initialize waypaper
    hl.exec_cmd("hyprpaper") -- Initialize hyprpaper
    hl.exec_cmd("hypridle") -- Using hypridle
    hl.exec_cmd("swaync") -- Load SwayNC Notification Manager
    hl.exec_cmd("ags &")
    hl.exec_cmd("~/.config/dotfiles/scripts/set_gtk.sh") -- Load GTK settings
    hl.exec_cmd("~/.config/dotfiles/scripts/post_install.sh") -- Exec post installtion (if needed)
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets,ssh") -- Gnome keyring
    hl.exec_cmd("wayvnc 0.0.0.0 5900") -- VNC connection
end)
