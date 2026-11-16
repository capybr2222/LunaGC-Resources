local base_info = {
	group_id = 234774004
}

monsters = {
	{ config_id = 4001, monster_id = 24061201, pos = { x = -1.500, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 4002, monster_id = 24061201, pos = { x = 1.500, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 4003, monster_id = 25100101, pos = { x = -3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4004, monster_id = 25100101, pos = { x = 0.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4005, monster_id = 25100101, pos = { x = 3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4006, monster_id = 25100201, pos = { x = -3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4007, monster_id = 25100201, pos = { x = 0.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4008, monster_id = 25100201, pos = { x = 3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4009, monster_id = 22050101, pos = { x = -1.500, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 4010, monster_id = 22050101, pos = { x = 1.500, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true },
	{ config_id = 4011, monster_id = 24060801, pos = { x = -3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4012, monster_id = 24060801, pos = { x = 0.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4013, monster_id = 24060801, pos = { x = 3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4014, monster_id = 24060901, pos = { x = -3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4015, monster_id = 24060901, pos = { x = 0.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4016, monster_id = 24060901, pos = { x = 3.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 4017, monster_id = 24061302, pos = { x = 0.000, y = -0.176, z = -9.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true, isElite = true }
}

npcs = {
}

gadgets = {
	{ config_id = 4999, gadget_id = 70900205, pos = { x = 5.917, y = -0.566, z = 2.600 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
	{ config_id = 1004018, name = "ANY_MONSTER_LIVE_4018", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_4018", action = "action_EVENT_ANY_MONSTER_LIVE_4018" },
	{ config_id = 1004019, name = "CHALLENGE_SUCCESS_4019", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "2", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_4019" },
	{ config_id = 1004020, name = "CHALLENGE_FAIL_4020", event = EventType.EVENT_CHALLENGE_FAIL, source = "2", condition = "", action = "action_EVENT_CHALLENGE_FAIL_4020" },
	{ config_id = 1004021, name = "ANY_MONSTER_DIE_4021", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4021", action = "action_EVENT_ANY_MONSTER_DIE_4021" },
	{ config_id = 1004022, name = "ANY_MONSTER_DIE_4022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4022", action = "action_EVENT_ANY_MONSTER_DIE_4022" },
	{ config_id = 1004023, name = "ANY_MONSTER_DIE_4023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4023", action = "action_EVENT_ANY_MONSTER_DIE_4023" },
	{ config_id = 1004024, name = "ANY_MONSTER_DIE_4024", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4024", action = "action_EVENT_ANY_MONSTER_DIE_4024" },
	{ config_id = 1004025, name = "ANY_MONSTER_DIE_4025", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4025", action = "action_EVENT_ANY_MONSTER_DIE_4025" },
	{ config_id = 1004026, name = "ANY_MONSTER_DIE_4026", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_4026", action = "action_EVENT_ANY_MONSTER_DIE_4026" }
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
		monsters = { 4001, 4002 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_LIVE_4018", "ANY_MONSTER_DIE_4021", "CHALLENGE_SUCCESS_4019", "CHALLENGE_FAIL_4020" },
		rand_weight = 100
	},
	{
		monsters = { 4003, 4004, 4005 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4022", "CHALLENGE_SUCCESS_4019", "CHALLENGE_FAIL_4020" },
		rand_weight = 100
	},
	{
		monsters = { 4006, 4007, 4008 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4023", "CHALLENGE_SUCCESS_4019", "CHALLENGE_FAIL_4020" },
		rand_weight = 100
	},
	{
		monsters = { 4009, 4010 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4024", "CHALLENGE_SUCCESS_4019", "CHALLENGE_FAIL_4020" },
		rand_weight = 100
	},
	{
		monsters = { 4011, 4012, 4013 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4025", "CHALLENGE_SUCCESS_4019", "CHALLENGE_FAIL_4020" },
		rand_weight = 100
	},
	{
		monsters = { 4014, 4015, 4016 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_4026", "CHALLENGE_SUCCESS_4019", "CHALLENGE_FAIL_4020" },
		rand_weight = 100
	},
	{
		monsters = { 4017 },
		gadgets = { 4999 },
		regions = { },
		triggers = { "CHALLENGE_SUCCESS_4019", "CHALLENGE_FAIL_4020" },
		rand_weight = 100
	}
}

function condition_EVENT_ANY_MONSTER_LIVE_4018(context, evt)
	if 4001 ~= evt.param1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_LIVE_4018(context, evt)
	local tpl_time = ScriptLib.GetGroupVariableValueByGroup(context, "TPL_TIME", 234774001)
	if tpl_time == nil or tpl_time < 0 then
		tpl_time = 0
	end

	if 0 ~= ScriptLib.ActiveChallenge(context, 2, 198, tpl_time, 234774004, 17, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge_by_remainTime")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_SUCCESS_4019(context, evt)
	if 0 ~= ScriptLib.SetGroupVariableValueByGroup(context, "stage", 2, 234774001) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable_by_group")
		return -1
	end

	if 0 ~= ScriptLib.SetIsAllowUseSkill(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_allow_use_skill")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234774009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234774009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function action_EVENT_CHALLENGE_FAIL_4020(context, evt)
	if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 234774004, suite = 1 }) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
		return -1
	end

	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234774009, 9001, GadgetState.Default) then
		return -1
	end

	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 234774009, 9002, GadgetState.Default) then
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 1 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4021(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234774004, 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 2) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4022(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 2 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4022(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234774004, 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 3) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4023(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 3 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4023(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234774004, 5) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 4) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 4 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4024(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234774004, 6) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 5) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 5 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4025(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234774004, 7) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 6) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end

function condition_EVENT_ANY_MONSTER_DIE_4026(context, evt)
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end

	if ScriptLib.GetGroupVariableValue(context, "monster_wave") ~= 6 then
		return false
	end

	return true
end

function action_EVENT_ANY_MONSTER_DIE_4026(context, evt)
	if 0 ~= ScriptLib.AddExtraGroupSuite(context, 234774004, 8) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_extra_group_suite")
		return -1
	end

	if 0 ~= ScriptLib.SetGroupVariableValue(context, "monster_wave", 7) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end

	return 0
end
