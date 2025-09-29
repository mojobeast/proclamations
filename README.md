# Proclamations

_by MojoBeast_

Proclamations is a datapack for showing on-screen announcements (using the Minecraft `/title` command) to players in response to various events, and can be used entirely in Survival Mode.

# Getting Started

First, enchant a banner in an enchanting table to give it the Proclamation enchantment.

Name the banner in an anvil to set the default text that is displayed. If the banner has custom lore, the first line of lore will also be shown as a subtitle.

By default, the color of the title will match the color of the banner. If the banner's name or lore have custom formatting, that will be used instead.

Once you have placed an enchanted banner, you can right-click on it to bring up a menu to configure its properties

Banners with this enchantment behave differently depending on what block they are attached to:

- **Player Detectors**: To show a title when players come within a certain radius of a banner, attach it to a lodestone.

- **Redstone Detectors**: To show a title when a redstone block is in a certain state, attach it to a note block, redstone lamp, copper bulb, jukebox or observer.

- **Inventory Detectors**: To show a dynamic title based on the items in a shulker box, attach it to any item with an inventory - such as a barrel, dropper, hopper, etc.

# Player Detectors

To show a title when players come within a certain radius of a banner, attach it to a lodestone.

The banner shows a title when a player comes within its detection range. This range can be changed in the configuration menu by right-clicking on the banner.

By default, the title is shown only to the player who triggered the player detector. This can be changed in the banner's configuration menu to all players who are online, or all players within a certain range.

If you use a compass on a lodestone with an enchanted banner attached to it, it will rename the compass's name and lore to match the banner.

# Redstone Detectors

To show a title when a redstone block is in a certain state, attach it to one of the following blocks:

- **Note block**: activates when powered.
- **Observer**: activates when powered.
- **Redstone lamp**: activates when lit.
- **Copper bulb**: activates when lit.
- **Jukebox**: activates when a disc is inserted.

The detector can be configured to show a title to either all players within a certain range, or all online players.

# Inventory Detectors

An inventory detector is an enchanted banner attached to a block with an inventory. It shows a dynamically constructed title when a shulker box is detected in its inventory.

The detector reads all of the items in the shulker box and constructs the title from specific items it finds.

- **Wool**: displayed as a title
- **Carpet**: displayed as a subtitle
- **Banners**: displayed in the action bar

By default, the item's color is used as the color shown in the title. If its name contains custom formatting, this is used instead.",

- An item that has been renamed in an anvil is interpreted as text.
- A stack of more than one item is interpreted as a number.
- If both are true, the number is shown, then the name.

The detector can be configured to show its title to all players within a specified range, all players who are online, or all detected players.

A player is considered to be \"detected\" if a player head matching their profile is found in the shulker box.
