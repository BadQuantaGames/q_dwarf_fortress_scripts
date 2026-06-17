#!/bin/bash

SRC="/home/quanta/.local/share/Steam/steamapps/common/Dwarf Fortress/dfhack-config"
DST="/home/quanta/Projects/q_dwarf_fortress_scripts"

cp -a "$SRC/blueprints/." "$DST/blueprints/"
cp -a "$SRC/orders/." "$DST/orders/"
cp -a "$SRC/stockpiles/." "$DST/stockpiles/"
