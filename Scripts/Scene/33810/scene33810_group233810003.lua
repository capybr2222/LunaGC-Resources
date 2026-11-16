local base_info = {
	group_id = 233810003
}

monsters = {
	{ config_id = 3001, monster_id = 23080401, pos = { x = -3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3002, monster_id = 23080401, pos = { x = 0.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3003, monster_id = 23080401, pos = { x = 3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3004, monster_id = 23080501, pos = { x = -3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3005, monster_id = 23080501, pos = { x = 0.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3006, monster_id = 23080501, pos = { x = 3.000, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 3007, monster_id = 23085101, pos = { x = -1.500, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 3008, monster_id = 23085101, pos = { x = 1.500, y = -0.102, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true }
}

npcs = {
}

gadgets = {
	{ config_id = 3999, gadget_id = 70900205, pos = { x = 5.917, y = -0.566, z = 2.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1003009, name = "ANY_MONSTER_LIVE_3009", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_3009", action = "action_EVENT_ANY_MONSTER_LIVE_3009" },
	{ config_id = 1003010, name = "CHALLENGE_SUCCESS_3010", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_3010" },
	{ config_id = 1003011, name = "CHALLENGE_FAIL_3011", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_3011" },
	{ config_id = 1003012, name = "ANY_MONSTER_DIE_3012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3012", action = "action_EVENT_ANY_MONSTER_DIE_3012" },
	{ config_id = 1003013, name = "ANY_MONSTER_DIE_3013", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3013", action = "action_EVENT_ANY_MONSTER_DIE_3013" }
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
		gadgets = { 3999 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		monsters = { 3001, 3002, 3003 },
		gadgets = { 3999 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_3009", "ANY_MONSTER_DIE_3012", "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011" },
		rand_weight = 100
	},
	{
		monsters = { 3004, 3005, 3006 },
		gadgets = { 3999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3013", "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011" },
		rand_weight = 100
	},
	{
		monsters = { 3007, 3008 },
		gadgets = { 3999 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_3010", "CHALLENGE_FAIL_3011" },
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
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 197, 600, 233810003, 8, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_3010(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "TPL_TIME", evt.param2, 233810001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : save_challenge_remainTime")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 1, 233810001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.TowerMirrorTeamSetUp(context, 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_team_setup")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233810002, 2001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 233810002, 2001, {176}) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233810009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233810009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_3011(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 233810003, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233810009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 233810009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3012(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233810003, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_3013(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 233810003, 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end
