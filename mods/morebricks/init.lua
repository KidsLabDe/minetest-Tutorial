morebricks = {}

local S

if minetest.get_translator ~= nil then
    S = minetest.get_translator(minetest.get_current_modname())
else
    S = function(str)
        return(str)
    end
end

minetest.register_node ("morebricks:green", {
    description = S("Green Brick Block"),
    tiles = {"morebricks_green.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:green 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:green"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:green"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:blue", {
    description = S("Blue Brick Block"),
    tiles = {"morebricks_blue.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:blue 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:blue"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:blue"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:pink", {
    description = S("Pink Brick Block"),
    tiles = {"morebricks_pink.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:pink 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:pink"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:pink"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:violet", {
    description = S("Violet Brick Block"),
    tiles = {"morebricks_violet.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:violet 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:violet"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:violet"},
        {"", "", ""},
    }
})


minetest.register_node ("morebricks:white", {
    description = S("White Brick Block"),
    tiles = {"morebricks_white.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:white 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:white"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:white"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:grey", {
    description = S("Grey Brick Block"),
    tiles = {"morebricks_grey.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:grey 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:grey"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:grey"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:black", {
    description = S("Black Brick Block"),
    tiles = {"morebricks_black.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:black_ 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:black"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:black"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:darkgrey", {
    description = S("Dark-Grey Brick Block"),
    tiles = {"morebricks_darkgrey.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:darkgrey 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:dark_grey"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:dark_grey"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:magenta", {
    description = S("Magenta Brick Block"),
    tiles = {"morebricks_magenta.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:magenta 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:magenta"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:magenta"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:yellow", {
    description = S("Yellow Brick Block"),
    tiles = {"morebricks_yellow.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:yellow 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:yellow"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:yellow"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:brown", {
    description = S("Brown Brick Block"),
    tiles = {"morebricks_brown.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:brown 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:brown"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:brown"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:orange", {
    description = S("Orange Brick Block"),
    tiles = {"morebricks_orange.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:orange 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:orange"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:orange"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:cyan", {
    description = S("Cyan Brick Block"),
    tiles = {"morebricks_cyan.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:cyan 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:cyan"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:cyan"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:darkgreen", {
    description = S("Dark-Green Brick Block"),
    tiles = {"morebricks_darkgreen.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:darkgreen 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:dark_green"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:dark_green"},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:gold", {
    description = S("Gold Brick Block"),
    tiles = {"morebricks_gold.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 1, level = 2},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:gold 2",
    recipe = {
        {"default:gold_ingot", "default:gold_ingot", ""},
        {"default:gold_ingot", "default:gold_ingot", ""},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:copper", {
    description = S("Copper Brick Block"),
    tiles = {"morebricks_copper.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 1, level = 2},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:copper 2",
    recipe = {
        {"default:copper_ingot", "default:copper_ingot", ""},
        {"default:copper_ingot", "default:copper_ingot", ""},
        {"", "", ""},
    }
})

minetest.register_node ("morebricks:steel", {
    description = S("Steel Brick Block"),
    tiles = {"morebricks_steel.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:steel 2",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", ""},
        {"default:steel_ingot", "default:steel_ingot", ""},
        {"", "", ""},
    }
})




minetest.register_node ("morebricks:copperaged", {
    description = S("Aged Copper Brick Block"),
    tiles = {"morebricks_copperaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:copperaged 2",
    recipe = {
        {"default:copper_ingot", "default:copper_ingot", ""},
        {"default:copper_ingot", "default:copper_ingot", ""},
        {"", "default:dirt", ""},
    }
})




minetest.register_node ("morebricks:cyanaged", {
    description = S("Aged Cyan Brick Block"),
    tiles = {"morebricks_cyanaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:cyanaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:cyan"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:cyan"},
        {"", "default:dirt", ""},
    }
})

minetest.register_node ("morebricks:greenaged", {
    description = S("Aged Green Brick Block"),
    tiles = {"morebricks_greenaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:greenaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:green"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:green"},
        {"", "default:dirt", ""},
    }
})


minetest.register_node ("morebricks:greyaged", {
    description = S("Aged Grey Brick Block"),
    tiles = {"morebricks_greyaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:greyaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:grey"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:grey"},
        {"", "default:dirt", ""},
    }
})


minetest.register_node ("morebricks:magentaaged", {
    description = S("Aged Magenta Brick Block"),
    tiles = {"morebricks_magentaaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:magentaaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:magenta"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:magenta"},
        {"", "default:dirt", ""},
    }
})


minetest.register_node ("morebricks:pinkaged", {
    description = S("Aged Pink Brick Block"),
    tiles = {"morebricks_pinkaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:pinkaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:pink"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:pink"},
        {"", "default:dirt", ""},
    }
})


minetest.register_node ("morebricks:orangeaged", {
    description = S("Aged Orange Brick Block"),
    tiles = {"morebricks_orangeaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:orangeaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:orange"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:orange"},
        {"", "default:dirt", ""},
    }
})


minetest.register_node ("morebricks:steelaged", {
    description = S("Aged Steel Brick Block"),
    tiles = {"morebricks_steelaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:steelaged 3",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", ""},
        {"default:steel_ingot", "default:steel_ingot", ""},
        {"", "default:dirt", ""},
    }
})


minetest.register_node ("morebricks:whiteaged", {
    description = S("Aged White Brick Block"),
    tiles = {"morebricks_whiteaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:whiteaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:white"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:white"},
        {"", "default:dirt", ""},
    }
})


minetest.register_node ("morebricks:yellowaged", {
    description = S("Aged Yellow Brick Block"),
    tiles = {"morebricks_yellowaged.png"},
    is_ground_content = false,
    sounds = default.node_sound_stone_defaults(),
    groups = {cracky = 2, level = 1},
    light_source = 0,
})

minetest.register_craft({
    output = "morebricks:yellowaged 3",
    recipe = {
        {"default:clay_brick", "default:clay_brick", "bakedclay:yellow"},
        {"default:clay_brick", "default:clay_brick", "bakedclay:yellow"},
        {"", "default:dirt", ""},
    }
})



local brick = {
	{"white", "White"},
	{"grey", "Grey"},
  {"copperaged", "Aged Copper"},  {"cyanaged", "Aged Cyan"},  {"greenaged", "Aged Green"},   {"magentaaged", "Aged Magenta"},   {"orangeaged", "Aged Orange"},   {"pinkaged", "Aged Pink"},  {"steelaged", "Aged Steel"},   {"whiteaged", "Aged White"},  {"yellowaged", "Aged Yellow"},	{"black", "Black"},

	{"yellow", "Yellow"},
	{"green", "Green"},
	{"cyan", "Cyan"},
	{"blue", "Blue"},
	{"magenta", "Magenta"},
	{"orange", "Orange"},
	{"violet", "Violet"},
	{"brown", "Brown"},
	{"pink", "Pink"},
	{"darkgrey", "Dark-Grey"},
	{"darkgreen", "Dark-Green"},     {"gold", "Gold"},     {"copper", "Copper"
},  {"steel", "Steel"} }

local stairs_mod = minetest.get_modpath("stairs")
local stairsplus_mod = minetest.get_modpath("moreblocks")
	and minetest.global_exists("stairsplus")

for _, brick in pairs(brick) do

	-- node definition

	minetest.register_node("morebricks:" .. brick[1], {
		description = brick[2] .. " Brick Block",
		tiles = {"morebricks_" .. brick[1] ..".png"},
		groups = {cracky = 3, bakedclay = 1},
		sounds = default.node_sound_stone_defaults(),
	})

   -- register stairsplus stairs if found
	if stairsplus_mod then

		stairsplus:register_all("morebricks", "morebricks_" .. brick[1], "morebricks:" .. brick[1], {
		
description = brick[2] .. " Brick Block",
			tiles = {"morebricks_" .. brick[1] .. ".png"},
			groups = {cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		})

		stairsplus:register_alias_all("morebricks", brick[1], "morebricks", "morebricks_" .. brick[1])
		minetest.register_alias("stairs:slab_morebricks_".. brick[1], "morebricks:slab_brick_block_" .. brick[1])
		minetest.register_alias("stairs:stair_morebricks_".. brick[1], "morebricks:stair_brick_block_" .. brick[1])

	-- register all stair types for stairs redo
	elseif stairs_mod and stairs.mod then

		stairs.register_all("morebricks_" .. brick[1], "morebricks:" .. brick[1],
			{cracky = 3},
			{"morebricks_" .. brick[1] .. ".png"},
			brick[2] .. " Brick Block",
			default.node_sound_stone_defaults())

	    
stairs.register_stair_and_slab("morebricks_".. brick[1], "bakedclay:".. brick[1],
			{cracky = 3},
			{"morebricks_" .. brick[1] .. ".png"},
			brick[2] .. " Brick Block Stair",
			brick[2] .. " Brick Block Slab",
			default.node_sound_stone_defaults())
 end                          end