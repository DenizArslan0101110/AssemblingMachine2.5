require "shared"

local automation25 = {
	type = "technology",
	name = "advanced-automation",
	icon_size =256,
	icon = GRAPHICS.."tech/automation-25.png",
	effects = {{type = "unlock-recipe", recipe = "assembling-machine-25"}},
	prerequisites = {"chemical-science-pack"},
	unit = {
		count = 150, 
		ingredients = {
			{"automation-science-pack", 1}, 
			{"logistic-science-pack", 1}, 
			{"chemical-science-pack", 1}
		}, 
		time = 30
	}
}

-- space exploration compatible version
local se_automation25 = {
	type = "technology",
	name = "advanced-automation",
	icon_size =256,
	icon = GRAPHICS.."tech/automation-25.png",
	effects = {{type = "unlock-recipe", recipe = "assembling-machine-25"}},
	prerequisites = {"lubricant"},
	unit = {
		count = 250, 
		ingredients = {
			{"automation-science-pack", 1}, 
			{"logistic-science-pack", 1}, 
			{"chemical-science-pack", 1}
		}, 
		time = 45
	}
}

if se_compatibility then
	data:extend({se_automation25})
else
	data:extend({automation25})
end

