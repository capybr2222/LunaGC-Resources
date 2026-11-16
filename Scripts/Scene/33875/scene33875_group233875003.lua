local base_info = {
	group_id = 233875003
}

monsters = {
	{ config_id = 3001, monster_id = 21040201, pos = { x = 0.000, y = -0.102, z = -10.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 3002, monster_id = 21040201, pos = { x = 0.000, y = -0.102, z = 10.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 3003, monster_id = 21010201, pos = { x = 6.428, y = -0.102, z = -7.660 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21010201, pos = { x = 3.420, y = -0.102, z = 9.397 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 21010201, pos = { x = -9.848, y = -0.102, z = -1.736 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3010, monster_id = 23070101, pos = { x = 0.000, y = -0.102, z = -10.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3011, monster_id = 23070101, pos = { x = 8.660, y = -0.102, z = 5.000 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3012, monster_id = 23070101, pos = { x = -8.660, y = -0.102, z = 5.000 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3013, monster_id = 23073101, pos = { x = 6.428, y = -0.102, z = -7.660 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3014, monster_id = 23073101, pos = { x = 3.420, y = -0.102, z = 9.397 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3015, monster_id = 23073101, pos = { x = -9.848, y = -0.102, z = -1.736 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, disableWander = true }
}

npcs = {
}

gadgets = {
	{ config_id = 3999, gadget_id = 70900205, pos = { x = 6.220, y = -1.157, z = 3.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 3024, gadget_id = 70350450, pos = { x = 0.000, y = -0.093, z = 0.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1003006, name = "ANY_MONSTER_LIVE_3006", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3006", action = "action_EVENT_ANY_MONSTER_LIVE_3006" },
	{ config_id = 1003007, name = "CHALLENGE_SUCCESS_3007", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3007" },
	{ config_id = 1003008, name = "CHALLENGE_FAIL_3008", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3008" },
	{ config_id = 1003009, name = "ANY_MONSTER_DIE_3009", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3009", action = "action_EVENT_ANY_MONSTER_DIE_3009" },
	{ config_id = 1003016, name = "ANY_MONSTER_LIVE_3016", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3016", action = "action_EVENT_ANY_MONSTER_LIVE_3016" },
	{ config_id = 1003017, name = "CHALLENGE_SUCCESS_3017", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3017" },
	{ config_id = 1003018, name = "CHALLENGE_FAIL_3018", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3018" },
	{ config_id = 1003019, name = "ANY_MONSTER_DIE_3019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3019", action = "action_EVENT_ANY_MONSTER_DIE_3019" }
}

variables = {
	{ config_id = 1, name = "monster_wave_1", value = 0, no_refresh = false },
	{ config_id = 2, name = "monster_wave_2", value = 0, no_refresh = false }
}

init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

suites = {
	{
		monsters = { },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		monsters = { 3001, 3002 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3006", "ANY_MONSTER_DIE_3009", "CHALLENGE_SUCCESS_3007", "CHALLENGE_FAIL_3008" },
		rand_weight = 100
	},
	{
		monsters = { 3003, 3004, 3005 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3007", "CHALLENGE_FAIL_3008" },
		rand_weight = 100
	},
	{
		monsters = { 3010, 3011, 3012 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3016", "ANY_MONSTER_DIE_3019", "CHALLENGE_SUCCESS_3017", "CHALLENGE_FAIL_3018" },
		rand_weight = 100
	},
	{
		monsters = { 3013, 3014, 3015 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3017", "CHALLENGE_FAIL_3018" },
		rand_weight = 100
	}
}

function condition_EVENT_ANY_MONSTER_LIVE_3006(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_LIVE_3006(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 233875003, 5, 3024, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_guard")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_1", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_3007(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233875001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233875001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875002, 2001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233875002, 2001, {176}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_3008(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233875003, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave_1") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3009(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233875003, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_1", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	if 3010 ~= evt.param1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_LIVE_3016(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 233875003, 6, 3024, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_guard")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_2", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_3017(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233875001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_3018(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233875003, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233875009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3019(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave_2") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3019(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233875003, 5) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_2", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end
