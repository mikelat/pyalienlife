ENTITY{
    type = 'beacon',
    name = 'hidden-beacon',
    icon = '__pycoalprocessinggraphics__/graphics/empty.png',
    icon_size = 32,
    flags = {'placeable-player', 'hide-alt-info', 'hidden'},
    max_health = 200,
    corpse = 'beacon-remnants',
    dying_explosion = 'beacon-explosion',
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
    supply_area_distance = 1,
    energy_source = {type = 'void'},
    energy_usage = '1W',
    distribution_effectivity = 1,
    module_specification = {
        module_slots = 1,
        module_info_icon_shift = {0, 0},
        module_info_multi_row_initial_height_modifier = -0.3,
        module_info_max_icons_per_row = 2
    },
    rotate = false,
    orientation_to_variation = false,
    selectable_in_game = false,
    collision_mask = {}
}
