-- 7.1 Spiral Abyss reconstruction: scene 33885, group 233885003
-- Monsters: 8 across 4 wave(s).
local base_info = {
	group_id = 233885003
}

monsters = {
	{ config_id = 3001, monster_id = 25132601, pos = { x = -1.717, y = -0.100, z = 8.835 }, rot = { x = 0.000, y = 169.002, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 25132801, pos = { x = 1.717, y = -0.100, z = 8.835 }, rot = { x = 0.000, y = 190.998, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 25132601, pos = { x = 5.033, y = -0.100, z = 7.461 }, rot = { x = 0.000, y = 214.003, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 25132801, pos = { x = 7.461, y = -0.100, z = 5.033 }, rot = { x = 0.000, y = 235.997, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 25132601, pos = { x = 8.835, y = -0.100, z = 1.717 }, rot = { x = 0.000, y = 259.002, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3007, monster_id = 25132801, pos = { x = 8.835, y = -0.100, z = -1.717 }, rot = { x = 0.000, y = 280.998, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3008, monster_id = 25132601, pos = { x = 7.461, y = -0.100, z = -5.033 }, rot = { x = 0.000, y = 304.003, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3009, monster_id = 25132801, pos = { x = 5.033, y = -0.100, z = -7.461 }, rot = { x = 0.000, y = 325.997, z = 0.000 }, level = 1, disableWander = true },
}

npcs = {
}

gadgets = {
	{ config_id = 3006, gadget_id = 70900205, pos = { x = 6.220, y = -1.386, z = 3.136 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1003001, name = "ANY_MONSTER_LIVE_1003001", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_ANY_MONSTER_LIVE_1003001", action = "action_ANY_MONSTER_LIVE_1003001" },
	{ config_id = 1003002, name = "CHALLENGE_SUCCESS_1003002", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_CHALLENGE_SUCCESS_1003002" },
	{ config_id = 1003003, name = "CHALLENGE_FAIL_1003003", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_CHALLENGE_FAIL_1003003" },
	{ config_id = 1003011, name = "ANY_MONSTER_DIE_WAVE1", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_ANY_MONSTER_DIE_WAVE1", action = "action_ANY_MONSTER_DIE_WAVE1" },
	{ config_id = 1003012, name = "ANY_MONSTER_DIE_WAVE2", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_ANY_MONSTER_DIE_WAVE2", action = "action_ANY_MONSTER_DIE_WAVE2" },
	{ config_id = 1003013, name = "ANY_MONSTER_DIE_WAVE3", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_ANY_MONSTER_DIE_WAVE3", action = "action_ANY_MONSTER_DIE_WAVE3" },
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
	{ monsters = { 3001, 3002 }, gadgets = { 3006 }, regions = { }, triggers = { "ANY_MONSTER_LIVE_1003001", "CHALLENGE_SUCCESS_1003002", "CHALLENGE_FAIL_1003003", "ANY_MONSTER_DIE_WAVE1" }, rand_weight = 100 },
	{ monsters = { 3003, 3004 }, gadgets = { 3006 }, regions = { }, triggers = { "CHALLENGE_SUCCESS_1003002", "CHALLENGE_FAIL_1003003", "ANY_MONSTER_DIE_WAVE2" }, rand_weight = 100 },
	{ monsters = { 3005, 3007 }, gadgets = { 3006 }, regions = { }, triggers = { "CHALLENGE_SUCCESS_1003002", "CHALLENGE_FAIL_1003003", "ANY_MONSTER_DIE_WAVE3" }, rand_weight = 100 },
	{ monsters = { 3008, 3009 }, gadgets = { 3006 }, regions = { }, triggers = { "CHALLENGE_SUCCESS_1003002", "CHALLENGE_FAIL_1003003" }, rand_weight = 100 },
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_ANY_MONSTER_LIVE_1003001(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_ANY_MONSTER_LIVE_1003001(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233885003, 8, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_CHALLENGE_SUCCESS_1003002(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233885001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
		return -1
	end
	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233885001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end
	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233885002, 2001, GadgetState.Default) then
		return -1
	end
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233885002, 2001, {176}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233885009, 9001, GadgetState.Default) then
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233885009, 9002, GadgetState.Default) then
		return -1
	end
	
	return 0
end

-- 触发操作
function action_CHALLENGE_FAIL_1003003(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233885003, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233885002, 2001, GadgetState.GearAction2) then
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233885009, 9001, GadgetState.Default) then
		return -1
	end
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233885009, 9002, GadgetState.Default) then
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
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233885003, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_ANY_MONSTER_DIE_WAVE2(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
		return false
	end
	
	return true
end

-- 触发操作
function action_ANY_MONSTER_DIE_WAVE2(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233885003, 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_ANY_MONSTER_DIE_WAVE3(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
		return false
	end
	
	return true
end

-- 触发操作
function action_ANY_MONSTER_DIE_WAVE3(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233885003, 5) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end
	
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end
	
	return 0
end
