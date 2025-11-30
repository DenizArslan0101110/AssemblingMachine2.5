require "shared"
require "prototypes.items"
require "prototypes.recipes"
require "prototypes.technologies"
require "prototypes.entities"
require "prototypes.remnants"






--[[ old code below
--item_ass2_5 is the item version
local item_ass2_5 = table.deepcopy(data.raw["item"]["assembling-machine-2"])
--assembler2_5 is the building
local assembler2_5 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])

--sets up item_ass2_5 properties
item_ass2_5.name = "assembling-machine-25"
item_ass2_5.place_result = "assembling-machine-25"
item_ass2_5.icons = {
	{
		icon = item_ass2_5.icon,
		icon_size = item_ass2_5.icon_size,
		tint = {r=1,g=0.3,b=0.2,a=0.3}
	},
}

--sets up assembler2_5 properties
assembler2_5.name = "assembling-machine-25"
assembler2_5.energy_usage = "225kW"
assembler2_5.crafting_speed = 1.0
assembler2_5.disabled_when_recipe_not_researched = false;
assembler2_5.module_slots = 3
assembler2_5.minable = { mining_time = 0.2, result = "assembling-machine-25" }

--creates the recipe, this time from zero without copying
local recipe = {
	type = "recipe",
	name = "assembling-machine-25",
	enabled = true,
	energy_required = 0.5,
	ingredients = {
		{type = "item", name = "advanced-circuit", amount = 3},
		{type = "item", name = "electronic-circuit", amount = 5},
		{type = "item", name = "iron-gear-wheel", amount = 5}
	},
	results = {{type = "item", name = "assembling-machine-25", amount = 1}}
}

--this part finally adds them to the game
data:extend{item_ass2_5, assembler2_5, recipe}
--]]