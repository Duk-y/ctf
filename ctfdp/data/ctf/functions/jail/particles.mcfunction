# EAST
execute at @s[tag=east, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~ ~ ~-0.5 0 -2 0 0.1 0 force
execute at @s[tag=east, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~ ~ ~-0.25 0 -2 0 0.1 0 force
execute at @s[tag=east, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 2 run particle small_flame ~ ~ ~0 0 -2 0 0.1 0 force
execute at @s[tag=east, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~ ~ ~0.25 0 -2 0 0.1 0 force

execute at @s[tag=NE] if score $jail.particle_emitter.timer var matches 2 run particle small_flame ~ ~ ~0 0 -2 0 0.1 0 force
execute at @s[tag=NE] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~ ~ ~0.25 0 -2 0 0.1 0 force
execute at @s[tag=NE] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~-0.25 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=NE] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~-0.5 ~ ~ 0 -2 0 0.1 0 force

execute at @s[tag=SE] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~ ~ ~-0.5 0 -2 0 0.1 0 force
execute at @s[tag=SE] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~ ~ ~-0.25 0 -2 0 0.1 0 force
execute at @s[tag=SE] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~ ~ ~0 0 -2 0 0.1 0 force

execute at @s[tag=SE] if score $jail.particle_emitter.timer var matches 2 run particle small_flame ~-0.25 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=SE] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~-0.5 ~ ~ 0 -2 0 0.1 0 force

# WEST
execute at @s[tag=jail.particle_emitter, tag=west, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~ ~ ~-0.5 0 -2 0 0.1 0 force
execute at @s[tag=jail.particle_emitter, tag=west, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 2 run particle small_flame ~ ~ ~-0.25 0 -2 0 0.1 0 force
execute at @s[tag=jail.particle_emitter, tag=west, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~ ~ ~0 0 -2 0 0.1 0 force
execute at @s[tag=jail.particle_emitter, tag=west, tag=!SE, tag=!NE, tag=!SW, tag=!NW] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~ ~ ~0.25 0 -2 0 0.1 0 force


execute at @s[tag=SW] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~ ~ ~0 0 -2 0 0.1 0 force
execute at @s[tag=SW] if score $jail.particle_emitter.timer var matches 2 run particle small_flame ~ ~ ~-0.25 0 -2 0 0.1 0 force
execute at @s[tag=SW] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~ ~ ~-0.5 0 -2 0 0.1 0 force
execute at @s[tag=SW] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~0.25 ~ ~ 0 -2 0 0.1 0 force

execute at @s[tag=NW] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~ ~ ~-0.75 0 -2 0 0.1 0 force
execute at @s[tag=NW] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~ ~ ~-1 0 -2 0 0.1 0 force

execute at @s[tag=NW] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~0.25 ~ ~-1 0 -2 0 0.1 0 force

# NORTH
execute at @s[tag=north] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~-0.5 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=north] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~-0.25 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=north] if score $jail.particle_emitter.timer var matches 2 run particle small_flame ~0 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=north] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~0.25 ~ ~ 0 -2 0 0.1 0 force

# SOUTH
execute at @s[tag=south] if score $jail.particle_emitter.timer var matches 3 run particle small_flame ~-0.5 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=south] if score $jail.particle_emitter.timer var matches 2 run particle small_flame ~-0.25 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=south] if score $jail.particle_emitter.timer var matches 1 run particle small_flame ~0 ~ ~ 0 -2 0 0.1 0 force
execute at @s[tag=south] if score $jail.particle_emitter.timer var matches 0 run particle small_flame ~0.25 ~ ~ 0 -2 0 0.1 0 force