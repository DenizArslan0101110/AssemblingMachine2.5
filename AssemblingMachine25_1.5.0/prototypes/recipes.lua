require "shared"

-- Assembling Machine 2.5 --
local assembler25 =
{
	type = "recipe",
	name = "assembling-machine-25",
	enabled = false,
	energy_required = 0.5,
	ingredients =
	{
		{type = "item", name = "assembling-machine-2", amount = 1},
		{type = "item", name = "advanced-circuit", amount = 3},
		{type = "item", name = "electronic-circuit", amount = 5},
		{type = "item", name = "copper-plate", amount = 10}
	},
	results = {{type = "item", name = "assembling-machine-25", amount = 1}}
}

-- (space exploration recipe) Assembling Machine 2.5 --
local se_assembler25 =
{
	type = "recipe",
	name = "assembling-machine-25",
	category = "crafting-with-fluid",
	enabled = false,
	energy_required = 0.5,
	ingredients =
	{
		{type = "item", name = "assembling-machine-2", amount = 1},
		{type = "item", name = "advanced-circuit", amount = 3},
		{type = "fluid", name = "lubricant", amount = 100},
		{type = "item", name = "steel-plate", amount = 5}
	},
	results = {{type = "item", name = "assembling-machine-25", amount = 1}}
}

if se_compatibility then
	data:extend({se_assembler25})
else
	data:extend({assembler25})
end

