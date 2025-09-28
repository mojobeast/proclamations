execute \
    as @a \
    if function proclamations:help/enable \
    unless score @s proclamations.help matches 1.. \
    run return \
    run function proclamations:help/welcome_message

execute \
    as @a \
    if score @s proclamations.help matches 2 \
    run function proclamations:help/main