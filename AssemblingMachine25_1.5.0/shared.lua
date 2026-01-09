--Contains shared names and folder filepaths and alike

MOD_NAME = "AssemblingMachine25"
GRAPHICS = "__"..MOD_NAME.."__/graphics/"

if mods["space-age"] then
	dlc_compatibility = true
else
	dlc_compatibility = false
end

if mods["space-exploration"] then
	se_compatibility = true
else 
	se_compatibility = false
end

if mods["Age-of-Production"] then
	aop_compatibility = true
else
	aop_compatibility = false
end

if mods["PlanetsLib"] then
	planets_lib_compatibility = true
else
	planets_lib_compatibility = false
end
