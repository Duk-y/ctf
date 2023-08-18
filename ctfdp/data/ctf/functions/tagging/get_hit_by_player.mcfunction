# run as player getting tagged
# always runs before ctm:tagging/hit_player function
advancement revoke @s only ctf:get_hit_by_player

tag @a remove target
tag @s add target
