require "shared"
require "functions"

-- Make Assembling machine 3 require assembling machine 2.5 instead of 2, dependant on config setting
if settings.startup["assembling-3-recipe-requirement"].value then
	local recipe = data.raw.recipe["assembling-machine-3"]
	if recipe and recipe.ingredients then
		for i, ing in ipairs(recipe.ingredients) do
			local name = ing.name or ing[1]
			if name == "assembling-machine-2" then
				recipe.ingredients[i] = {type = "item", name = "assembling-machine-25", amount = 1}
				break
			end
		end
	end
end

--this mod shit too harf :3
if dlc_compatibility then
	local oldassembler25 = data.raw["assembling-machine"]["assembling-machine-25"]
	local assembler25 = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
	for k, v in pairs(oldassembler25) do
		if assembler25[k] ~= nil then
			assembler25[k] = v
		end
	end
	data.raw["assembling-machine"]["assembling-machine-25"] = assembler25
	data.raw["assembling-machine"]["assembling-machine-25"].graphics_set.reset_animation_when_frozen = true
	data.raw["assembling-machine"]["assembling-machine-25"].graphics_set.frozen_patch =
	{
		filename = "__space-age__/graphics/entity/frozen/assembling-machine/assembling-machine-2-frozen.png",
		priority = "high",
		width = 214,
		height = 218,
		shift = util.by_pixel(0, 4),
		scale = 0.5
	}
	for key, fluid_box in pairs(data.raw["assembling-machine"]["assembling-machine-25"].fluid_boxes) do
		if type(fluid_box) == "table" then
			fluid_box.pipe_picture_frozen = assemblerpipepicturesfrozen()
		end
	end
end

if aop_compatibility then
	local assembler25 = data.raw["assembling-machine"]["assembling-machine-25"]
	assembler25.crafting_categories = data.raw["assembling-machine"]["aop-advanced-assembling-machine"].crafting_categories
	data.raw["assembling-machine"]["assembling-machine-25"] = assembler25
end

-- how did we even get broken by a library mod
--if planets_lib_compatibility then
	--local assembler25 = data.raw["assembling-machine"]["assembling-machine-25"]
	--assembler25.crafting_categories = data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories
	--assembler25.weight = 30*kg
	--data.raw["assembling-machine"]["assembling-machine-25"] = assembler25
--end
