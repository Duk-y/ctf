# eastern particle emitters
summon marker ~4 ~3 ~ {Tags:["jail.particle_emitter", "east"], NoGravity:1b}
summon marker ~4 ~3 ~1 {Tags:["jail.particle_emitter", "east"], NoGravity:1b}
summon marker ~4 ~3 ~2 {Tags:["jail.particle_emitter", "east"], NoGravity:1b}
summon marker ~4 ~3 ~3 {Tags:["jail.particle_emitter", "east"], NoGravity:1b}
summon marker ~4 ~3 ~4 {Tags:["jail.particle_emitter", "east", "SE"], NoGravity:1b}
summon marker ~4 ~3 ~-1 {Tags:["jail.particle_emitter", "east"], NoGravity:1b}
summon marker ~4 ~3 ~-2 {Tags:["jail.particle_emitter", "east"], NoGravity:1b}
summon marker ~4 ~3 ~-3 {Tags:["jail.particle_emitter", "east"], NoGravity:1b}
summon marker ~4 ~3 ~-4 {Tags:["jail.particle_emitter", "east", "NE"], NoGravity:1b}

# western particle emitters
summon marker ~-4 ~3 ~ {Tags:["jail.particle_emitter", "west"], NoGravity:1b}
summon marker ~-4 ~3 ~1 {Tags:["jail.particle_emitter", "west"], NoGravity:1b}
summon marker ~-4 ~3 ~2 {Tags:["jail.particle_emitter", "west"], NoGravity:1b}
summon marker ~-4 ~3 ~3 {Tags:["jail.particle_emitter", "west"], NoGravity:1b}
summon marker ~-4 ~3 ~4 {Tags:["jail.particle_emitter", "west", "SW"], NoGravity:1b}
summon marker ~-4 ~3 ~-1 {Tags:["jail.particle_emitter", "west"], NoGravity:1b}
summon marker ~-4 ~3 ~-2 {Tags:["jail.particle_emitter", "west"], NoGravity:1b}
summon marker ~-4 ~3 ~-3 {Tags:["jail.particle_emitter", "west"], NoGravity:1b}
summon marker ~-4 ~3 ~-3 {Tags:["jail.particle_emitter", "west", "NW"], NoGravity:1b}

# southern particle emitters
summon marker ~ ~3 ~4 {Tags:["jail.particle_emitter", "south"], NoGravity:1b}
summon marker ~1 ~3 ~4 {Tags:["jail.particle_emitter", "south"], NoGravity:1b}
summon marker ~2 ~3 ~4 {Tags:["jail.particle_emitter", "south"], NoGravity:1b}
summon marker ~3 ~3 ~4 {Tags:["jail.particle_emitter", "south"], NoGravity:1b}
summon marker ~-1 ~3 ~4 {Tags:["jail.particle_emitter", "south"], NoGravity:1b}
summon marker ~-2 ~3 ~4 {Tags:["jail.particle_emitter", "south"], NoGravity:1b}
summon marker ~-3 ~3 ~4 {Tags:["jail.particle_emitter", "south"], NoGravity:1b}

# northern particle emitters
summon marker ~ ~3 ~-4 {Tags:["jail.particle_emitter", "north"], NoGravity:1b}
summon marker ~1 ~3 ~-4 {Tags:["jail.particle_emitter", "north"], NoGravity:1b}
summon marker ~2 ~3 ~-4 {Tags:["jail.particle_emitter", "north"], NoGravity:1b}
summon marker ~3 ~3 ~-4 {Tags:["jail.particle_emitter", "north"], NoGravity:1b}
summon marker ~-1 ~3 ~-4 {Tags:["jail.particle_emitter", "north"], NoGravity:1b}
summon marker ~-2 ~3 ~-4 {Tags:["jail.particle_emitter", "north"], NoGravity:1b}
summon marker ~-3 ~3 ~-4 {Tags:["jail.particle_emitter", "north"], NoGravity:1b}

# reset trapdoors
function ctf:jail/jailbreak/jailbreak_end