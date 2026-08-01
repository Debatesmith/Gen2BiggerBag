-- EriLab Bottomless Bag
-- Gen1Recomp v0.1.50+ reads this public constant in Bag.capacity.

return function(mod)
  -- There are fewer than 255 normal item IDs in Gen 1, so this is
  -- effectively unlimited while keeping a finite, predictable value.
  mod.content.constants:patch("bagSize", 255)

  mod.log:info("Bottomless Bag enabled: capacity set to 255 slots")
end
