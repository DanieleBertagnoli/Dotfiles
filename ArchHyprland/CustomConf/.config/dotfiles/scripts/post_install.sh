#!/bin/bash 

# By: Daniele Bertagnoli

#  _____   ____   _____ _______ 
# |  __ \ / __ \ / ____|__   __|
# | |__) | |  | | (___    | |   
# |  ___/| |  | |\___ \   | |   
# | |    | |__| |____) |  | |   
# |_|     \____/|_____/   |_|   
#

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
POST_INSTALL_MARKER="$CONFIG_DIR/dotfiles/cache/do_post_install"
MONITORS_FILE="$CONFIG_DIR/hypr/configs/monitors.lua"
WORKSPACES_FILE="$CONFIG_DIR/hypr/configs/workspaces.lua"

if [ ! -f "$POST_INSTALL_MARKER" ]; then
    exit 0
fi

# Read the monitor data once so monitor and workspace configuration agree.
if ! MONITOR_JSON=$(hyprctl monitors -j); then
    echo "Unable to read connected monitors."
    exit 1
fi

# Store Lua-quoted monitor names for the workspace rules below.
mapfile -t MONITORS < <(jq -r '.[].name | @json' <<< "$MONITOR_JSON")
NUM_MON=${#MONITORS[@]}

if [[ $NUM_MON -eq 0 ]]; then
    echo "No monitors detected!"
    exit 1
fi

# These files are required from hyprland.lua, so generate Lua rather than
# Hyprland's legacy .conf directives. Recreate them instead of appending.
{
    printf '%s\n\n' '-- Auto-generated monitor configuration'
    jq -r '.[] |
        "hl.monitor({\n" +
        "    output   = \(.name | @json),\n" +
        "    mode     = \"preferred\",\n" +
        "    position = \"\(.x)x\(.y)\",\n" +
        "    scale    = \(.scale),\n" +
        "})\n"' <<< "$MONITOR_JSON"
} > "$MONITORS_FILE"

pictures_folder=$(xdg-user-dir PICTURES)

# Set random wallpaper
waypaper --random

# Number of workspaces you want to distribute
TOTAL_WS=9

# Workspaces per monitor (rounded up)
WS_PER_MON=$(( (TOTAL_WS + NUM_MON - 1) / NUM_MON ))

{
    printf '%s\n\n' '-- Auto-generated workspace configuration'

    ws=1
    for mon in "${MONITORS[@]}"; do
        for ((i=0; i<WS_PER_MON && ws<=TOTAL_WS; i++)); do
            printf '%s\n' \
                'hl.workspace_rule({' \
                "    workspace = $ws," \
                "    monitor = $mon," \
                '    persistent = true,' \
                '})' \
                ''
            ((ws++))
        done
    done
} > "$WORKSPACES_FILE"
 
rm "$POST_INSTALL_MARKER"

sleep 10
reboot
