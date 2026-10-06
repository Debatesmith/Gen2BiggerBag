# Gen 2 Bottomless Pack

Expands the ordinary ITEM pocket in Pokemon Gold, Silver, and Crystal from 20 to 255 distinct item slots in Gen1Recomp.

## What it changes

- Raises the ITEM pocket capacity from 20 to 255 distinct item types.
- Keeps the normal limit of 99 copies per item.
- Uses the Pack menu's existing scrolling behavior.
- Does not add, remove, or rearrange items.
- Uses only the public Mod API and requires no `engine_internals` permission.

Gen 2's other pockets retain their native capacities: 12 Ball slots, 25 Key Item slots, and 57 TM/HM slots. Those pockets already have room for their complete native item sets.

## Compatibility

- Pokemon Gold, Silver, and Crystal.
- Gen1Recomp 0.2.27 or newer, below 1.0.0.
- Mod API 2.

## Installation

Import `Gen2-Bottomless-Pack-v1.0.0.zip` from the Gen1Recomp Mods screen, enable it for Gold, Silver, or Crystal, and restart the game if prompted.

## Saves and cartridge export

Gen1Recomp's native save preserves the complete inventory. If the mod is disabled, existing items remain in the save, but the game will reject new ITEM-pocket item types while the pocket is above its active capacity.

An original Game Boy cartridge save has room for only 20 ITEM-pocket slots. Gen1Recomp will refuse cartridge `.sav` export while the ITEM pocket exceeds that native limit. Deposit or remove items until no more than 20 distinct ITEM-pocket types remain before exporting.

Back up important saves before changing mods or exporting to cartridge format.

## Credits

Gen 2 port by Debatesmith. Inspired by EriLab Bottomless Bag for Gen 1 by erereck.
