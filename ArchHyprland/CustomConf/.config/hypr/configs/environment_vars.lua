-- By: Daniele Bertagnoli

--  ______ _   ___      __ __      __     _____   _____ 
-- |  ____| \ | \ \    / / \ \    / /\   |  __ \ / ____|
-- | |__  |  \| |\ \  / /   \ \  / /  \  | |__) | (___  
-- |  __| | . ` | \ \/ /     \ \/ / /\ \ |  _  / \___ \ 
-- | |____| |\  |  \  /       \  / ____ \| | \ \ ____) |
-- |______|_| \_|   \/         \/_/    \_\_|  \_\_____/ 

-- Environment variables

-- NVIDIA https://wiki.hyprland.org/Nvidia/

hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.config({
    cursor = {
        no_hardware_cursors = true,
    },
})
