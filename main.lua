-- Gen 2 Bottomless Pack
-- Expands the ordinary ITEM pocket through the public Mod API.

return function(mod)
  mod.content.constants:patch("bagSize", 255)
  mod.log:info("Gen 2 Bottomless Pack enabled: ITEM pocket set to 255 slots")
end
