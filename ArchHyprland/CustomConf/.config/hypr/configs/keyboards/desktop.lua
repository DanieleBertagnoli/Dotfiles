-- By: Daniele Bertagnoli

--  _  __________     ______   ____          _____  _____  
-- | |/ /  ____\ \   / /  _ \ / __ \   /\   |  __ \|  __ \ 
-- | ' /| |__   \ \_/ /| |_) | |  | | /  \  | |__) | |  | |
-- |  < |  __|   \   / |  _ <| |  | |/ /\ \ |  _  /| |  | |
-- | . \| |____   | |  | |_) | |__| / ____ \| | \ \| |__| |
-- |_|\_\______|  |_|  |____/ \____/_/    \_\_|  \_\_____/ 


hl.config({
    input = {
        kb_layout = "LAYOUT",
        kb_variant = "VARIANT",
        numlock_by_default = true,
        mouse_refocus = false,
        follow_mouse = 1,
        touchpad = {
            -- For desktop
            natural_scroll = false,
        },
        sensitivity = 0, -- Pointer speed: -1.0 - 1.0, 0 means no modification.
    },
})

hl.config({
    gestures = {
        workspace_swipe = true,
    },
})
