-- 7.1 Spiral Abyss reconstruction: scene 33884 barrier
local base_info = {
	group_id = 233884009
}

monsters = {
}

npcs = {
}

gadgets = {
	{ config_id = 9001, gadget_id = 70350053, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 9002, gadget_id = 70350054, pos = { x = 0.000, y = 0.000, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1009003, name = "DUNGEON_SETTLE_9003", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_EVENT_DUNGEON_SETTLE_9003" }
}

variables = {
}

init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

suites = {
	{
		monsters = { },
		gadgets = { 9001, 9002 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_9003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_9003(context, evt)
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233884009, 9001, GadgetState.Default) then
		return -1
	end
	
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233884009, 9002, GadgetState.Default) then
		return -1
	end
	
	return 0
end