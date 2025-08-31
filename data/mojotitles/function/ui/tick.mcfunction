execute as @a unless score @s mojotitles.configure matches 0 \
    run function mojotitles:ui/main
    
scoreboard players enable @a mojotitles.configure