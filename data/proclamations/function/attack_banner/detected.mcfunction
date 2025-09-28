advancement revoke @s only proclamations:hurt_proclamation_banner
tag @s add proclamations.player_attacked_banner
execute as @e[type=minecraft:interaction,tag=proclamations.banner,distance=..10] \
    if function proclamations:attack_banner/check_attacker \
    run function proclamations:attack_banner/destroy
tag @s remove proclamations.player_attacked_banner