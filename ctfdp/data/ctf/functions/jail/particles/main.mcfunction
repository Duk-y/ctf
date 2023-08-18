execute if score $jail.particle_emitter.timer var matches 0 rotated 0 0 run function ctf:jail/particles/one_frame
execute if score $jail.particle_emitter.timer var matches 1 rotated 90 0 run function ctf:jail/particles/one_frame
execute if score $jail.particle_emitter.timer var matches 2 rotated 180 0 run function ctf:jail/particles/one_frame
execute if score $jail.particle_emitter.timer var matches 3 rotated -90 0 run function ctf:jail/particles/one_frame
