local base_info = {
	group_id = 233792004
}

monsters = {
	{ config_id = 4001, monster_id = 25410401, pos = { x = -3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4002, monster_id = 25410401, pos = { x = 0.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4003, monster_id = 25410401, pos = { x = 3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4004, monster_id = 26110101, pos = { x = 0.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true }
}

npcs = {
}

gadgets = {
	{ config_id = 4999, gadget_id = 70900205, pos = { x = 5.917, y = -0.566, z = 2.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1004005, name = "ANY_MONSTER_LIVE_4005", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4005", action = "action_EVENT_ANY_MONSTER_LIVE_4005" },
	{ config_id = 1004006, name = "CHALLENGE_SUCCESS_4006", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4006" },
	{ config_id = 1004007, name = "CHALLENGE_FAIL_4007", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4007" },
	{ config_id = 1004008, name = "ANY_MONSTER_DIE_4008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4008", action = "action_EVENT_ANY_MONSTER_DIE_4008" }
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
		triggers = { "ANY_MONSTER_LIVE_4005", "ANY_MONSTER_DIE_4008", "CHALLENGE_SUCCESS_4006", "CHALLENGE_FAIL_4007" },
		rand_weight = 100
	},
	{
		monsters = { 4004 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4006", "CHALLENGE_FAIL_4007" },
		rand_weight = 100
	}
}

function condition_EVENT_ANY_MONSTER_LIVE_4005(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_LIVE_4005(context, evt)
	local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 233792001)
	if tpl_time == nil or tpl_time < 0 then
		tpl_time = 0
	end

	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 233792004, 4, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_4006(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233792001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233792009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233792009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_4007(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233792004, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233792009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233792009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4008(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233792004, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end
