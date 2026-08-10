-- Blueman Manager
hl.window_rule({
    name  = "blueman",
    match = {
        title = "^(blueman-manager)$",
    },
    float = true,
    center = true,
    pin = true,
})

-- Blueman Device Info
hl.window_rule({
    name  = "nm_connection_editor",
    match = {
        title = "^(nm-connection-editor)$",
    },
    float = true,
    center = true,
    pin = true,
})

-- Qiv
hl.window_rule({
    name  = "qiv",
    match = {
        title = "^(qiv)$",
    },
    float = true,
    center = true,
    pin = true,
})

-- Browser Picture in Picture
hl.window_rule({
    name  = "picture_in_picture",
    match = {
        title = "^(Picture-in-Picture)$",
    },
    float = true,
    pin = true,
    move = "69.5% 4%",
})

-- Pavucontrol
hl.window_rule({
    name  = "pavucontrol",
    match = {
        class = "(.*org.pulseaudio.pavucontrol.*)",
    },
    float = true,
    center = true,
    pin = true,
    size = "700 600",
})

-- System Mission Center
hl.window_rule({
    name  = "mission_center",
    match = {
        class = "(io.missioncenter.MissionCenter)",
    },
    float = true,
    pin = true,
    center = true,
    size = "900 600",
})

-- System Mission Center Preference Window
hl.window_rule({
    name  = "mission_center_prefs",
    match = {
        class = "(missioncenter)",
        title = "^(Preferences)$",
    },
    center = true,
    pin = true,
    float = true,
})

-- Gnome Calculator
hl.window_rule({
    name  = "calculator",
    match = {
        class = "(org.gnome.Calculator)",
    },
    size = "700 600",
    center = true,
    float = true,
})

-- Hyprland Share Picker
hl.window_rule({
    name  = "hyprland_share_picker",
    match = {
        title = "match:class (hyprland-share-picker)",
    },
    center = true,
    size = "600 400",
    pin = true,
    float = true,
})

-- XDG Desktop Portal

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", 1)
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", 1)

-- GDK
hl.env("GDK_SCALE", 1)

-- Toolkit Backend
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("CLUTTER_BACKEND", "wayland")

-- Mozilla
hl.env("MOZ_ENABLE_WAYLAND", 1)

-- Set the cursor size for xcursor
hl.env("XCURSOR_SIZE", 24)

-- Disable appimage launcher by default
hl.env("APPIMAGELAUNCHER_DISABLE", 1)

-- Ozone
hl.env("OZONE_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")