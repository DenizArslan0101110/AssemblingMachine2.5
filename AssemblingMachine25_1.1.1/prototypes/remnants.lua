require "shared"

-- Assembling Machine 2.5 --
local assembler25remnants = {
	type = "corpse",
    name = "assembling-machine-25-remnants",
    icon = GRAPHICS.."icon/assembling-machine-25.png",
    hidden_in_factoriopedia = true,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "production-machine-remnants",
    order = "a-a-a",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    animation = make_rotated_animation_variations_from_sheet (3,
    {
      filename = GRAPHICS.."entity/assembling-machine-25/remnants/assembling-machine-25-remnants.png",
      line_length = 1,
      width = 328,
      height = 282,
      direction_count = 1,
      shift = util.by_pixel(0, 9.5),
      scale = 0.5
    })
}

data:extend({assembler25remnants})