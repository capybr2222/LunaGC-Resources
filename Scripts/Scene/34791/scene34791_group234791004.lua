local base_info = {
	group_id = 234791004
}

monsters = {
	{ config_id = 4001, monster_id = 25510301, pos = { x = -3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 25510301, pos = { x = 0.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4003, monster_id = 25510301, pos = { x = 3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4004, monster_id = 25510701, pos = { x = -3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4005, monster_id = 25510701, pos = { x = 0.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4006, monster_id = 25510701, pos = { x = 3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4007, monster_id = 25510201, pos = { x = -3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4008, monster_id = 25510201, pos = { x = 0.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4009, monster_id = 25510201, pos = { x = 3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4010, monster_id = 23060302, pos = { x = -1.500, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 4011, monster_id = 23060302, pos = { x = 1.500, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 4012, monster_id = 23060402, pos = { x = -1.500, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 4013, monster_id = 23060402, pos = { x = 1.500, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true }
}

npcs = {
}

gadgets = {
	{ config_id = 4999, gadget_id = 70900205, pos = { x = 5.917, y = -0.566, z = 2.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1004014, name = "ANY_MONSTER_LIVE_4014", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4014", action = "action_EVENT_ANY_MONSTER_LIVE_4014" },
	{ config_id = 1004015, name = "CHALLENGE_SUCCESS_4015", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4015" },
	{ config_id = 1004016, name = "CHALLENGE_FAIL_4016", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4016" },
	{ config_id = 1004017, name = "ANY_MONSTER_DIE_4017", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4017", action = "action_EVENT_ANY_MONSTER_DIE_4017" },
	{ config_id = 1004018, name = "ANY_MONSTER_DIE_4018", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4018", action = "action_EVENT_ANY_MONSTER_DIE_4018" },
	{ config_id = 1004019, name = "ANY_MONSTER_DIE_4019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4019", action = "action_EVENT_ANY_MONSTER_DIE_4019" },
	{ config_id = 1004020, name = "ANY_MONSTER_DIE_4020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4020", action = "action_EVENT_ANY_MONSTER_DIE_4020" }
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
	{
		monsters = { },
		gadgets = { 4999 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		monsters = { 4001, 4002, 4003 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4014", "ANY_MONSTER_DIE_4017", "CHALLENGE_SUCCESS_4015", "CHALLENGE_FAIL_4016" },
		rand_weight = 100
	},
	{
		monsters = { 4004, 4005, 4006 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4018", "CHALLENGE_SUCCESS_4015", "CHALLENGE_FAIL_4016" },
		rand_weight = 100
	},
	{
		monsters = { 4007, 4008, 4009 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4019", "CHALLENGE_SUCCESS_4015", "CHALLENGE_FAIL_4016" },
		rand_weight = 100
	},
	{
		monsters = { 4010, 4011 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4020", "CHALLENGE_SUCCESS_4015", "CHALLENGE_FAIL_4016" },
		rand_weight = 100
	},
	{
		monsters = { 4012, 4013 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4015", "CHALLENGE_FAIL_4016" },
		rand_weight = 100
	}
}

function condition_EVENT_ANY_MONSTER_LIVE_4014(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_LIVE_4014(context, evt)
	local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234791001)
	if tpl_time == nil or tpl_time < 0 then
		tpl_time = 0
	end

	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234791004, 13, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_4015(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234791001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234791009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234791009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_4016(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234791004, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234791009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234791009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4017(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4017(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234791004, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4018(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4018(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234791004, 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4019(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4019(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234791004, 5) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4020(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234791004, 6) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 5) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end
