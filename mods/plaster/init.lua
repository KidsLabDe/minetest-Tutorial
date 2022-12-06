minetest.register_node("plaster:lime", {
	description = "Lime",
	inventory_image = "plaster_lime.png",
})

minetest.register_node("plaster:plaster", {
	description = "Plaster",
	tiles = {"plaster_plaster.png"},
	is_ground_content = false,
	groups = {choppy = 2, cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("plaster:cross", {
	description = "Plaster with Crossed Frame",
	tiles = {"plaster_frame_square.png", "plaster_frame_square.png", "plaster_frame_cross.png"},
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
	is_ground_content = false,
	groups = {choppy = 2, cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("plaster:square", {
	description = "Plaster with Squared Frame",
	tiles = {"plaster_frame_square.png"},
	is_ground_content = false,
	groups = {choppy = 2, cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("plaster:straight", {
	description = "Plaster with Straight Frame",
	tiles = {"plaster_frame_straight_top.png", "plaster_frame_straight_top.png", "plaster_frame_straight.png^[transformR90"},
	paramtype2 = "facedir",
	on_place = minetest.rotate_node,
	is_ground_content = false,
	groups = {choppy = 2, cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})


minetest.register_craft({
	type = "shapeless",
	output = "plaster:lime 6",
	recipe = {"default:coral_skeleton"},
})
local s = "group:sand"
local l = "plaster:lime"
local w = "bucket:bucket_water"

minetest.register_craft({
	output = "plaster:plaster 6",
	recipe = {
		{s,l,s},
		{l, w, l},
		{s, l, s}
	},
	replacements = {
		{w, w},
	}
})

local p = "plaster:plaster"
local s = "group:stick"
local n = ""

minetest.register_craft({
	output = "plaster:square",
	recipe = {
		{s,s,s},
		{s,p,s},
		{s,s,s}
	}
})
minetest.register_craft({
	type = "shapeless",
	output = "plaster:plaster",
	recipe = {"plaster:square"},
})
minetest.register_craft({
	output = "plaster:cross",
	recipe = {
		{n,s,s},
		{s,p,s},
		{s,s,n}
	}
})
minetest.register_craft({
	type = "shapeless",
	output = "plaster:plaster",
	recipe = {"plaster:cross"},
})

minetest.register_craft({
	output = "plaster:straight",
	recipe = {
		{s,n,s},
		{n,p,n},
		{s,n,s}
	}
})
minetest.register_craft({
	type = "shapeless",
	output = p,
	recipe = {"plaster:straight"},
})

if minetest.global_exists("dungeon_loot") then
	dungeon_loot.register({
		{name = "plaster:plaster", chance = 0.35, count={3,24}},
		{name = "plaster:lime", chance = 0.45, count={13,24}}
	})
end