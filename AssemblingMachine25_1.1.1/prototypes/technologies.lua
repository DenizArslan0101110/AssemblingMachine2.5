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

data:extend({automation25})

