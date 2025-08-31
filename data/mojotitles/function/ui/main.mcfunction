scoreboard players reset @s mojotitles.configure

execute unless items entity @s weapon.mainhand #minecraft:banners \
    run return \
    run tellraw @s {"text":"Must be holding a banner to configure its properties.","color":"red"}

# In future, do:
# dialog show @s mojotitles:configure
function mojotitles:ui/configure_banner