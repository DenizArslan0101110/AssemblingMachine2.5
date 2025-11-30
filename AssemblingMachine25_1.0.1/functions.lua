require "shared"

--modified function from base game that returns pipe inputs for fluid recipes
function assembler25pipepictures()
  return
  {
    north =
    {
      filename = GRAPHICS.."entity/assembling-machine-25/assembling-machine-25-pipe-N.png",
      priority = "extra-high",
      width = 71,
      height = 38,
      shift = util.by_pixel(2.25, 13.5),
      scale = 0.5
    },
    east =
    {
      filename = GRAPHICS.."entity/assembling-machine-25/assembling-machine-25-pipe-E.png",
      priority = "extra-high",
      width = 42,
      height = 76,
      shift = util.by_pixel(-24.5, 1),
      scale = 0.5
    },
    south =
    {
      filename = GRAPHICS.."entity/assembling-machine-25/assembling-machine-25-pipe-S.png",
      priority = "extra-high",
      width = 88,
      height = 61,
      shift = util.by_pixel(0, -31.25),
      scale = 0.5
    },
    west =
    {
      filename = GRAPHICS.."entity/assembling-machine-25/assembling-machine-25-pipe-W.png",
      priority = "extra-high",
      width = 39,
      height = 73,
      shift = util.by_pixel(25.75, 1.25),
      scale = 0.5
    }
  }
end

--unmodified functon from base game that probably returns the closed pipes when the machine is set to fluid recipe but not connected via pipe
pipecoverspictures = function()
  return
  {
    north =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    },
    east =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    },
    south =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    },
    west =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  }
end

--[[
--unmodified function from base game that likely adds hit effects
local hit_effects = {}

function hit_effects.entity(offset_deviation, offset)
  local offset = offset or {0, 1}
  return
  {
    type = "create-entity",
    entity_name = "spark-explosion",
    offset_deviation = offset_deviation or {{-0.5, -0.5}, {0.5, 0.5}},
    offsets = {offset},
    damage_type_filters = "fire"
  }
end
--]]