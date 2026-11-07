local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.default_prog = { "pwsh.exe", "-NoLogo" }
config.initial_cols = 120
config.initial_rows = 28

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 11.0

config.enable_tab_bar = false
config.color_scheme = "Gruvbox Dark (Gogh)"

config.leader = {
	key = "b",
	mods = "CTRL",
	timeout_milliseconds = 2000,
}

config.keys = {
	{
		key = "b",
		mods = "LEADER|CTRL",
		action = act.SendKey({ key = "b", mods = "CTRL" }),
	},

	{
		key = "v",
		mods = "LEADER",
		action = act.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},
	{
		key = "s",
		mods = "LEADER",
		action = act.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},

	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},

	{
		key = "o",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Next"),
	},

	{
		key = "x",
		mods = "LEADER",
		action = act.CloseCurrentPane({ confirm = true }),
	},

	{
		key = "r",
		mods = "LEADER",
		action = act.ActivateKeyTable({
			name = "resize_pane",
			one_shot = false,
		}),
	},

	{
		key = "c",
		mods = "LEADER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "n",
		mods = "LEADER",
		action = act.ActivateTabRelative(1),
	},
	{
		key = "p",
		mods = "LEADER",
		action = act.ActivateTabRelative(-1),
	},

	{
		key = "1",
		mods = "LEADER",
		action = act.ActivateTab(0),
	},
	{
		key = "2",
		mods = "LEADER",
		action = act.ActivateTab(1),
	},
	{
		key = "3",
		mods = "LEADER",
		action = act.ActivateTab(2),
	},
	{
		key = "4",
		mods = "LEADER",
		action = act.ActivateTab(3),
	},
	{
		key = "5",
		mods = "LEADER",
		action = act.ActivateTab(4),
	},
	{
		key = "6",
		mods = "LEADER",
		action = act.ActivateTab(5),
	},
	{
		key = "7",
		mods = "LEADER",
		action = act.ActivateTab(6),
	},
	{
		key = "8",
		mods = "LEADER",
		action = act.ActivateTab(7),
	},
	{
		key = "9",
		mods = "LEADER",
		action = act.ActivateTab(8),
	},

	{
		key = "q",
		mods = "LEADER",
		action = act.CloseCurrentTab({ confirm = true }),
	},
}

config.key_tables = {
	resize_pane = {
		{
			key = "h",
			mods = "NONE",
			action = act.AdjustPaneSize({ "Left", 5 }),
		},
		{
			key = "j",
			mods = "NONE",
			action = act.AdjustPaneSize({ "Down", 5 }),
		},
		{
			key = "k",
			mods = "NONE",
			action = act.AdjustPaneSize({ "Up", 5 }),
		},
		{
			key = "l",
			mods = "NONE",
			action = act.AdjustPaneSize({ "Right", 5 }),
		},
		{
			key = "Escape",
			mods = "NONE",
			action = act.PopKeyTable,
		},
	},
}

return config
