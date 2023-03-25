local FUN = require("__pycoalprocessing__/prototypes/functions/functions")
local MODULE_SLOTS = 12
local FULL_CRAFTING_SPEED = 1.5 -- crafting speed when full of mk01 modules

local pipes = {
    north = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/top.png",
        priority = "low",
        width = 224,
        height = 230
    },
    south = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/bottom.png",
        priority = "extra-high",
        width = 224,
        height = 230
    },
    west = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/left.png",
        priority = "extra-high",
        width = 224,
        height = 230
    },
    east = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/right.png",
        priority = "extra-high",
        width = 224,
        height = 230
    }
}

RECIPE {
    type = "recipe",
    name = "ralesia-plantation-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"soil", 300},
        {"pipe", 15}, --bob steel pipe
        {"electronic-circuit", 25}, --bob basic-electronic-circuit-board
        {"stone", 100}, --bob glass
        {"iron-plate", 30},
        {"duralumin", 10},
        {"steam-engine", 1},
        {"treated-wood", 50},
        {"small-lamp", 20}
    },
    results = {
        {"ralesia-plantation-mk01", 1}
    }
}:add_unlock("ralesia")

ITEM {
    type = "item",
    name = "ralesia-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/ralesia-plantation-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-farm-buildings-mk01",
    order = "e",
    place_result = "ralesia-plantation-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "ralesia-plantation-mk01",
    icon = "__pyalienlifegraphics__/graphics/icons/ralesia-plantation-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "ralesia-plantation-mk01"},
    fast_replaceable_group = "ralesia-plantation",
    max_health = 60,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = MODULE_SLOTS
    },
    allowed_effects = {"speed","productivity",'consumption','pollution'},
    crafting_categories = {"ralesia"},
    crafting_speed = FUN.farm_speed(MODULE_SLOTS, FULL_CRAFTING_SPEED),
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -4,
    },
    energy_usage = "400kW",
    animation = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/ralesia-plantation.png",
        width = 224,
        height = 230,
        frame_count = 50,
        line_length = 8,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
        shift = {0.0, -0.163}
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-4.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true,
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pycoalprocessinggraphics__/sounds/ralesia-plantation.ogg", volume = 1.2},
        idle_sound = {filename = "__pycoalprocessinggraphics__/sounds/ralesia-plantation.ogg",volume = 0.3},
        apparent_volume = 2.5
    }
}
