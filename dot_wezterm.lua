-- vim: filetype=lua
-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

local act = wezterm.action

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font_size = 12.0

config.underline_position = -2
config.warn_about_missing_glyphs = false

config.mouse_bindings = {
    {
        event = { Up = { streak = 1, button = "Left" } },
        mods = "NONE",
        action = act.CompleteSelectionOrOpenLinkAtMouseCursor("PrimarySelection"),
    },
}

config.enable_tab_bar = false

config.window_padding = {
    left = 2,
    right = 2,
    top = 2,
    bottom = 2,
}
config.color_scheme = "Monokai Pro (Gogh)"

-- and finally, return the configuration to wezterm
return config
