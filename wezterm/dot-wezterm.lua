local wezterm = require 'wezterm';

local config = {
    font = wezterm.font_with_fallback {
        { family = "Source Han Code JP R", assume_emoji_presentation = false },
        { family = "Source Han Code JP R", assume_emoji_presentation = true },
    },
    font_size = 13,
    line_height = 1.1,
}

return config
