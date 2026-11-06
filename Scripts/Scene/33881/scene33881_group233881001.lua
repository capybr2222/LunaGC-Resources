-- 7.1 Spiral Abyss reconstruction: scene 33881 stage variables and gate
local base_info = {
	group_id = 233881001
}

monsters = {
}

npcs = {
}

gadgets = {
	{ config_id = 1001, gadget_id = 70350053, pos = { x = -0.020, y = -0.083, z = 0.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70350054, pos = { x = 0.028, y = -0.098, z = 0.031 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1001003, name = "DUNGEON_SETTLE_1003", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_1003" }
}

variables = {
	{ config_id = 1, name = "stage", value = 0, no_refresh = false },
	{ config_id = 2, name = "TPL_TIME", value = 0, no_refresh = false }
}

init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

suites = {
	{
		monsters = { },
		gadgets = { 1001, 1002 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_1003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_1003(context, evt)
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233881001, 1001, GadgetState.Default) then
		return -1
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233881001, 1002, GadgetState.Default) then
		return -1
	end
	
	return 0
end