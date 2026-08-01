package.path = "./?.lua;./?/init.lua;" .. package.path

local T = require("tests.modkit")
local Bag = require("src.inventory.Bag")
local Version = require("src.core.Version")

local workingTreeVersion = Version.engine
Version.engine = "0.1.50"
local run = T.sdk.loadMod("../erilab_bottomless_bag")
Version.engine = workingTreeVersion
T.eq(#run.errors, 0, "the mod loads cleanly")
T.eq(run.data.constants.bagSize, 255,
  "the public constants registry receives bagSize 255")
T.eq(Bag.capacity(run.data), 255,
  "the engine reads the modded capacity")

local save = { inventory = {} }
for i = 1, 255 do
  T.check(Bag.add(save, "FIX_ITEM_" .. i, 1, run.data),
    "slot " .. i .. " fits")
end
T.eq(Bag.slots(save), 255, "the bag holds 255 distinct item slots")
T.check(not Bag.add(save, "FIX_ITEM_256", 1, run.data),
  "a 256th distinct item is refused")
T.check(Bag.add(save, "FIX_ITEM_1", 1, run.data),
  "an existing stack can still grow at capacity")
T.eq(save.inventory.FIX_ITEM_1, 2, "the existing stack is updated")

run.release()
T.finish("erilab_bottomless_bag")
