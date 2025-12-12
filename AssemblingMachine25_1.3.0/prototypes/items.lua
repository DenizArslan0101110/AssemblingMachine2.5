require "shared"
local item_sounds = require "__base__.prototypes.item_sounds"

-- Assembling Machine 2.5 --
local assembler25 =
{
	type = "item",
	name = "assembling-machine-25",
	icon = GRAPHICS.."icon/assembling-machine-25.png",
	icon_size = 64,
	subgroup = "production-machine",
	order = "c[assembling-machine-25]",
	inventory_move_sound = item_sounds.metal_small_inventory_move,
	pick_sound = item_sounds.metal_small_inventory_pickup,
	drop_sound = item_sounds.metal_small_inventory_move,
	place_result = "assembling-machine-25",
	weight = 40*kg,
	stack_size = 50
}

-- SE changes assembling machines subgroup so I do too otherwise my machine ends up in a different ui slot --
if se_compatibility then
	assembler25.subgroup = "assembling"
end

data:extend({assembler25})
