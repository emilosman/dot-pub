local wezterm = require 'wezterm'

return {
  hide_tab_bar_if_only_one_tab = true,
  audible_bell = "Disabled",
  harfbuzz_features = {"calt=0", "clig=0", "liga=0"},
  window_close_confirmation = 'AlwaysPrompt',
  keys = {
    {
      key = 'w',
      mods = 'CMD',
      action = wezterm.action.CloseCurrentTab { confirm = true },
    }
  },
  colors = {
    foreground = '#d2d3fd',
    background = '#262626',
  }
}
