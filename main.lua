-- Gen 2 Bottomless Pack
-- Gen 2 can run against a per-game data view rather than the Data singleton.
-- Override the shared capacity function so every Bag.add caller sees the same
-- ITEM-pocket cap, including Player PC withdrawal.

return function(mod)
  local Bag = require("src.inventory.Bag")
  local Data = require("src.core.Data")

  if not Bag._gen2BottomlessPackCapacity then
    local originalCapacity = Bag.capacity
    Bag._gen2BottomlessPackCapacity = originalCapacity
    function Bag.capacity(data, pocket)
      if pocket == nil or pocket == "ITEM" then return 255 end
      return originalCapacity(data, pocket)
    end
  end

  -- Also update the singleton for consumers that read the rule directly.
  Data.constants = Data.constants or {}
  Data.constants.bagSize = 255

  mod.log:info("Gen 2 Bottomless Pack enabled: ITEM pocket set to 255 slots")
end
