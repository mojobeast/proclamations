advancement revoke @s only mojotitles:hurt_proclamation_banner
tag @s add mojotitles.player_attacked_banner
execute as @e[type=minecraft:interaction,tag=mojotitles.banner,distance=..10] \
    if function mojotitles:attack_banner/check_attacker \
    run function mojotitles:attack_banner/destroy
tag @s remove mojotitles.player_attacked_banner