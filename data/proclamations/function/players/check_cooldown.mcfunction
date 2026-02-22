execute store result score #now proclamations.player_cooldown \
    run time query gametime

execute if score @s proclamations.player_cooldown > #now proclamations.player_cooldown \
    run return run tag @s remove proclamations.players.sees_title

scoreboard players operation @s proclamations.player_cooldown = #now proclamations.player_cooldown

scoreboard players add @s proclamations.player_cooldown 20