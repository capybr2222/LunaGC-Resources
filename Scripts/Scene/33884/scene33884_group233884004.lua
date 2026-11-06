-- 7.1 Spiral Abyss reconstruction: scene 33884, group 233884004
-- Monsters: 2 across 2 wave(s).
local base_info = {
	group_id = 233884004
}

monsters = {
	{ config_id = 4001, monster_id = 23079101, pos = { x = 0.000, y = -0.100, z = -2.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 23079101, pos = { x = 0.000, y = -0.100, z = -2.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
}

npcs = {
}

gadgets = {
	{ config_id = 3006, gadget_id = 70900205, pos = { x = 6.220, y = -1.386, z = 3.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1004001, name = "ANY_MONSTER_LIVE_1004001", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_ANY_MONSTER_LIVE_1004001", action = "action_ANY_MONSTER_LIVE_1004001" },
	{ config_id = 1004002, name = "CHALLENGE_SUCCESS_1004002", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_CHALLENGE_SUCCESS_1004002" },
	{ config_id = 1004003, name = "CHALLENGE_FAIL_1004003", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_CHALLENGE_FAIL_1004003" },
	{ config_id = 1004011, name = "ANY_MONSTER_DIE_WAVE1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_ANY_MONSTER_DIE_WAVE1", action = "action_ANY_MONSTER_DIE_WAVE1" },
}

variables = {
	{ config_id = 1, name = "monster_wave", value = 0, no_refresh = false }
}

init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

suites = {
	{ monsters = { }, gadgets = { 3006 }, regions = { }, triggers = { }, rand_weight = 100 },
	{ monsters = { 4001 }, gadgets = { 3006 }, regions = { }, triggers = { "ANY_MONSTER_LIVE_1004001", "CHALLENGE_SUCCESS_1004002", "CHALLENGE_FAIL_1004003", "ANY_MONSTER_DIE_WAVE1" }, rand_weight = 100 },
	{ monsters = { 4002 }, gadgets = { 3006 }, regions = { }, triggers = { "CHALLENGE_SUCCESS_1004002", "CHALLENGE_FAIL_1004003" }, rand_weight = 100 },
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_ANY_MONSTER_LIVE_1004001(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_ANY_MONSTER_LIVE_1004001(context, evt)
	local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 233884001)
	if tpl_time == nil or tpl_time < 0 then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
		return -1
	elseif tpl_time < 1 then
		tpl_time = 0
	end
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 233884004, 2, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
		return -1
	end
	
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_CHALLENGE_SUCCESS_1004002(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233884001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_CHALLENGE_FAIL_1004003(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233884004, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233884002, 2001, GadgetState.GearAction2) then
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233884009, 9001, GadgetState.Default) then
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233884009, 9002, GadgetState.Default) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_ANY_MONSTER_DIE_WAVE1(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_ANY_MONSTER_DIE_WAVE1(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233884004, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end
