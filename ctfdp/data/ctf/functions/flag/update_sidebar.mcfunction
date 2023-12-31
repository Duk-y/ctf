execute store result score $flags_capt.mesa var if entity @e[tag=flag, tag=!carried, predicate=ctf:in_mesa]
execute store result score $flags_capt.cherry var if entity @e[tag=flag, tag=!carried, predicate=ctf:in_cherry]
execute store result score $flags_capt.desert var if entity @e[tag=flag, tag=!carried, predicate=ctf:in_desert]
execute store result score $flags_capt.ice var if entity @e[tag=flag, tag=!carried, predicate=ctf:in_ice]
execute store result score $flags_capt.forest var if entity @e[tag=flag, tag=!carried, predicate=ctf:in_forest]

execute if score $flags_capt.mesa var matches 0 run team modify mesa_sbd prefix [{"text": "MESA: ","color": "#E88C49"}]
execute if score $flags_capt.mesa var matches 1 run team modify mesa_sbd prefix [{"text": "MESA: ","color": "#E88C49"},{"text": "⚑","color": "#DC5D00"}]
execute if score $flags_capt.mesa var matches 2 run team modify mesa_sbd prefix [{"text": "MESA: ","color": "#E88C49"},{"text": "⚑⚑","color": "#DC5D00"}]
execute if score $flags_capt.mesa var matches 3 run team modify mesa_sbd prefix [{"text": "MESA: ","color": "#E88C49"},{"text": "⚑⚑⚑","color": "#DC5D00"}]
execute if score $flags_capt.mesa var matches 4 run team modify mesa_sbd prefix [{"text": "MESA: ","color": "#E88C49"},{"text": "⚑⚑⚑⚑","color": "#DC5D00"}]
execute if score $flags_capt.mesa var matches 5 run team modify mesa_sbd prefix [{"text": "MESA: ","color": "#E88C49"},{"text": "⚑⚑⚑⚑⚑","color": "#DC5D00"}]

execute if score $flags_capt.cherry var matches 0 run team modify cherry_sbd prefix [{"text": "CHERRY: ","color": "#FFB9FF"}]
execute if score $flags_capt.cherry var matches 1 run team modify cherry_sbd prefix [{"text": "CHERRY: ","color": "#FFB9FF"},{"text": "⚑","color": "#FF9FFF"}]
execute if score $flags_capt.cherry var matches 2 run team modify cherry_sbd prefix [{"text": "CHERRY: ","color": "#FFB9FF"},{"text": "⚑⚑","color": "#FF9FFF"}]
execute if score $flags_capt.cherry var matches 3 run team modify cherry_sbd prefix [{"text": "CHERRY: ","color": "#FFB9FF"},{"text": "⚑⚑⚑","color": "#FF9FFF"}]
execute if score $flags_capt.cherry var matches 4 run team modify cherry_sbd prefix [{"text": "CHERRY: ","color": "#FFB9FF"},{"text": "⚑⚑⚑⚑","color": "#FF9FFF"}]
execute if score $flags_capt.cherry var matches 5 run team modify cherry_sbd prefix [{"text": "CHERRY: ","color": "#FFB9FF"},{"text": "⚑⚑⚑⚑⚑","color": "#FF9FFF"}]

execute if score $flags_capt.desert var matches 0 run team modify desert_sbd prefix [{"text": "DESERT: ","color": "#FFF199"}]
execute if score $flags_capt.desert var matches 1 run team modify desert_sbd prefix [{"text": "DESERT: ","color": "#FFF199"},{"text": "⚑","color": "#FFED77"}]
execute if score $flags_capt.desert var matches 2 run team modify desert_sbd prefix [{"text": "DESERT: ","color": "#FFF199"},{"text": "⚑⚑","color": "#FFED77"}]
execute if score $flags_capt.desert var matches 3 run team modify desert_sbd prefix [{"text": "DESERT: ","color": "#FFF199"},{"text": "⚑⚑⚑","color": "#FFED77"}]
execute if score $flags_capt.desert var matches 4 run team modify desert_sbd prefix [{"text": "DESERT: ","color": "#FFF199"},{"text": "⚑⚑⚑⚑","color": "#FFED77"}]
execute if score $flags_capt.desert var matches 5 run team modify desert_sbd prefix [{"text": "DESERT: ","color": "#FFF199"},{"text": "⚑⚑⚑⚑⚑","color": "#FFED77"}]

execute if score $flags_capt.ice var matches 0 run team modify ice_sbd prefix [{"text": "ICE: ","color": "#B8F8FF"}]
execute if score $flags_capt.ice var matches 1 run team modify ice_sbd prefix [{"text": "ICE: ","color": "#B8F8FF"},{"text": "⚑","color": "#93ECF5"}]
execute if score $flags_capt.ice var matches 2 run team modify ice_sbd prefix [{"text": "ICE: ","color": "#B8F8FF"},{"text": "⚑⚑","color": "#93ECF5"}]
execute if score $flags_capt.ice var matches 3 run team modify ice_sbd prefix [{"text": "ICE: ","color": "#B8F8FF"},{"text": "⚑⚑⚑","color": "#93ECF5"}]
execute if score $flags_capt.ice var matches 4 run team modify ice_sbd prefix [{"text": "ICE: ","color": "#B8F8FF"},{"text": "⚑⚑⚑⚑","color": "#93ECF5"}]
execute if score $flags_capt.ice var matches 5 run team modify ice_sbd prefix [{"text": "ICE: ","color": "#B8F8FF"},{"text": "⚑⚑⚑⚑⚑","color": "#93ECF5"}]

execute if score $flags_capt.forest var matches 0 run team modify forest_sbd prefix [{"text": "FOREST: ","color": "#96E981"}]
execute if score $flags_capt.forest var matches 1 run team modify forest_sbd prefix [{"text": "FOREST: ","color": "#96E981"},{"text": "⚑","color": "#60C846"}]
execute if score $flags_capt.forest var matches 2 run team modify forest_sbd prefix [{"text": "FOREST: ","color": "#96E981"},{"text": "⚑⚑","color": "#60C846"}]
execute if score $flags_capt.forest var matches 3 run team modify forest_sbd prefix [{"text": "FOREST: ","color": "#96E981"},{"text": "⚑⚑⚑","color": "#60C846"}]
execute if score $flags_capt.forest var matches 4 run team modify forest_sbd prefix [{"text": "FOREST: ","color": "#96E981"},{"text": "⚑⚑⚑⚑","color": "#60C846"}]
execute if score $flags_capt.forest var matches 5 run team modify forest_sbd prefix [{"text": "FOREST: ","color": "#96E981"},{"text": "⚑⚑⚑⚑⚑","color": "#60C846"}]