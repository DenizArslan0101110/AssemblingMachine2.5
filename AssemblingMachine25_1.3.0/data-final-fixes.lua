if aop_compatibility then
	local assembler25 = data.raw["assembling-machine"]["assembling-machine-25"]
	assembler25.crafting_categories = data.raw["assembling-machine"]["aop-advanced-assembling-machine"].crafting_categories
	data.raw["assembling-machine"]["assembling-machine-25"] = assembler25
end
