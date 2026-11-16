local base_info = {
	group_id = 233773001
}

monsters = {
}

npcs = {
}

gadgets = {
	{ config_id = 1001, gadget_id = 70900205, pos = { x = 0.080, y = -1.576, z = 24.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 1002, gadget_id = 70900205, pos = { x = 0.040, y = -1.576, z = -23.740 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

regions = {
}

triggers = {
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
		triggers = { },
		rand_weight = 100
	}
}
