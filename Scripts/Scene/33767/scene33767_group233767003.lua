local base_info = {
	group_id = 233767003
}

monsters = {
	{ config_id = 3001, monster_id = 21020202, pos = { x = 0.000, y = -0.102, z = -10.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 3002, monster_id = 21020202, pos = { x = 0.000, y = -0.102, z = 10.000 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 3003, monster_id = 21010201, pos = { x = 6.428, y = -0.102, z = -7.660 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 21010201, pos = { x = 3.420, y = -0.102, z = 9.397 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 21010201, pos = { x = -9.848, y = -0.102, z = -1.736 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 21010701, pos = { x = 9.848, y = -0.102, z = -1.736 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3007, monster_id = 21010701, pos = { x = -3.420, y = -0.102, z = 9.397 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3008, monster_id = 21010701, pos = { x = -6.428, y = -0.102, z = -7.660 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3014, monster_id = 20011001, pos = { x = 0.000, y = -0.102, z = -10.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3015, monster_id = 20011001, pos = { x = 8.660, y = -0.102, z = 5.000 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3016, monster_id = 20011001, pos = { x = -8.660, y = -0.102, z = 5.000 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3017, monster_id = 20011202, pos = { x = 6.428, y = -0.102, z = -7.660 }, rot = { x = 0.000, y = 320.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3018, monster_id = 20011202, pos = { x = 3.420, y = -0.102, z = 9.397 }, rot = { x = 0.000, y = 200.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3019, monster_id = 20011202, pos = { x = -9.848, y = -0.102, z = -1.736 }, rot = { x = 0.000, y = 80.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3020, monster_id = 20010801, pos = { x = 9.848, y = -0.102, z = -1.736 }, rot = { x = 0.000, y = 280.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3021, monster_id = 20010801, pos = { x = -3.420, y = -0.102, z = 9.397 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3022, monster_id = 20010801, pos = { x = -6.428, y = -0.102, z = -7.660 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3023, monster_id = 20010501, pos = { x = 8.660, y = -0.102, z = 5.000 }, rot = { x = 0.000, y = 240.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3025, monster_id = 20010501, pos = { x = -8.660, y = -0.102, z = 5.000 }, rot = { x = 0.000, y = 120.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3026, monster_id = 20010501, pos = { x = -0.000, y = -0.102, z = -10.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
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
	{ config_id = 1003009, name = "ANY_MONSTER_LIVE_3009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3009", action = "action_EVENT_ANY_MONSTER_LIVE_3009" },
	{ config_id = 1003010, name = "CHALLENGE_SUCCESS_3010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3010" },
	{ config_id = 1003011, name = "CHALLENGE_FAIL_3011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3011" },
	{ config_id = 1003012, name = "ANY_MONSTER_DIE_3012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3012", action = "action_EVENT_ANY_MONSTER_DIE_3012" },
	{ config_id = 1003013, name = "ANY_MONSTER_DIE_3013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3013", action = "action_EVENT_ANY_MONSTER_DIE_3013" },
	{ config_id = 1003027, name = "ANY_MONSTER_LIVE_3027", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3027", action = "action_EVENT_ANY_MONSTER_LIVE_3027" },
	{ config_id = 1003028, name = "CHALLENGE_SUCCESS_3028", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3028" },
	{ config_id = 1003029, name = "CHALLENGE_FAIL_3029", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3029" },
	{ config_id = 1003030, name = "ANY_MONSTER_DIE_3030", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3030", action = "action_EVENT_ANY_MONSTER_DIE_3030" },
	{ config_id = 1003031, name = "ANY_MONSTER_DIE_3031", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3031", action = "action_EVENT_ANY_MONSTER_DIE_3031" },
	{ config_id = 1003032, name = "ANY_MONSTER_DIE_3032", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3032", action = "action_EVENT_ANY_MONSTER_DIE_3032" }
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
		triggers = { "ANY_MONSTER_LIVE_3009", "ANY_MONSTER_DIE_3012", "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011" },
		rand_weight = 100
	},
	{
		monsters = { 3003, 3004, 3005 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3013", "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011" },
		rand_weight = 100
	},
	{
		monsters = { 3006, 3007, 3008 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011" },
		rand_weight = 100
	},
	{
		monsters = { 3014, 3015, 3016 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3027", "ANY_MONSTER_DIE_3030", "CHALLENGE_SUCCESS_3028", "CHALLENGE_FAIL_3029" },
		rand_weight = 100
	},
	{
		monsters = { 3017, 3018, 3019 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3031", "CHALLENGE_SUCCESS_3028", "CHALLENGE_FAIL_3029" },
		rand_weight = 100
	},
	{
		monsters = { 3020, 3021, 3022 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3032", "CHALLENGE_SUCCESS_3028", "CHALLENGE_FAIL_3029" },
		rand_weight = 100
	},
	{
		monsters = { 3023, 3025, 3026 },
		gadgets = { 3999, 3024 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3028", "CHALLENGE_FAIL_3029" },
		rand_weight = 100
	}
}

function condition_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	if 3001 ~= evt.param1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_LIVE_3009(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 188, 233767003, 8, 3024, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_guard")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_1", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_3010(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233767001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233767001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767002, 2001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233767002, 2001, {176}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_3011(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233767003, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave_1") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233767003, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_1", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave_1") ~= 2 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233767003, 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_1", 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_LIVE_3027(context, evt)
	if 3014 ~= evt.param1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_LIVE_3027(context, evt)
	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 188, 233767003, 12, 3024, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_guard")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_2", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_3028(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 233767001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_3029(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233767003, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233767009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3030(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave_2") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3030(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233767003, 6) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_2", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3031(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave_2") ~= 2 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3031(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233767003, 7) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_2", 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave_2") ~= 3 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3032(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233767003, 8) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave_2", 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end
