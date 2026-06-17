#!/bin/bash

SRC="/home/quanta/.local/share/Steam/steamapps/common/Dwarf Fortress/dfhack-config"
DST="/home/quanta/Projects/q_dwarf_fortress_scripts"

sync_dir() {
    local a="$1"
    local b="$2"

    # Update B from A
    rsync -au "$a/" "$b/"

    # Update A from B
    rsync -au "$b/" "$a/"
}

sync_dir "$SRC/blueprints" "$DST/blueprints"
sync_dir "$SRC/orders" "$DST/orders"
sync_dir "$SRC/stockpiles" "$DST/stockpiles"
