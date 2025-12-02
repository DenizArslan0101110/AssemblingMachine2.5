-- Assembling Machine 2.5 --
local assembler25 = {
	type = "recipe",
	name = "assembling-machine-25",
	enabled = false,
	energy_required = 0.5,
	ingredients = {
		{type = "item", name = "assembling-machine-2", amount = 1},
		{type = "item", name = "advanced-circuit", amount = 3},
		{type = "item", name = "electronic-circuit", amount = 5},
		{type = "item", name = "copper-plate", amount = 10}
	},
	results = {{type = "item", name = "assembling-machine-25", amount = 1}}
}

-- Assembling Machine 3 -- (optionally)
-- depends on config settings
if settings.startup["assembling-3-recipe-requirement"].value then
	data.raw["recipe"]["assembling-machine-3"].ingredients = {
		{type = "item", name = "speed-module", amount = 4},
    	{type = "item", name = "assembling-machine-25", amount = 1}
	}
end


data:extend({assembler25})
