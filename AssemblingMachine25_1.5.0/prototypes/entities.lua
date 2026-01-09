require "shared"
require "functions"

-- Assembling Machine 2.5 --
local assembler25 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
assembler25.name = "assembling-machine-25"
assembler25.icon = GRAPHICS.."icon/assembling-machine-25.png"
assembler25.minable = {mining_time = 0.2, result = "assembling-machine-25"}
assembler25.corpse = "assembling-machine-25-remnants"
assembler25.crafting_speed = 1.00
assembler25.energy_usage = "225kW"
assembler25.module_slots = 3
assembler25.energy_source =
{
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = { pollution = 3 }
}
assembler25.fluid_boxes =
{
	{
		production_type = "input",
		pipe_picture = assembler25pipepictures(),
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1} }},
		secondary_draw_orders = { north = -1 }
	},
	{
		production_type = "output",
		pipe_picture = assembler25pipepictures(),
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = {{ flow_direction="output", direction = defines.direction.south, position = {0, 1} }},
		secondary_draw_orders = { north = -1 }
	}
}
assembler25.graphics_set =
{
	animation =
	{
		layers =
		{
			{
				filename = GRAPHICS.."entity/assembling-machine-25/assembling-machine-25.png",
				priority = "high",
				width = 214,
				height = 218,
				frame_count = 32,
				line_length = 8,
				shift = util.by_pixel(0, 4),
				scale = 0.5
			},
			{
				filename = GRAPHICS.."entity/assembling-machine-25/assembling-machine-25-shadow.png",
				priority = "high",
				width = 196,
				height = 163,
				frame_count = 32,
				line_length = 8,
				draw_as_shadow = true,
				shift = util.by_pixel(12, 4.75),
				scale = 0.5
			}
		}
	}
}

--make it so tier 2 assemblers upgrade to 2.5 rather than 3
data.raw["assembling-machine"]["assembling-machine-2"].next_upgrade = "assembling-machine-25"

--add it right here
data:extend({assembler25})
