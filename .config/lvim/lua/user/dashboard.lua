local dashboard = require("user/ad")
local user_config_path = "$HOME/.dotfiles/.config/lvim"

local header = {
  type = "text",
  val = {
    [[                                                    ]],
	[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
	[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
	[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
	[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
	[[                                                    ]],
  },
  opts = {
    position = "center",
    hl = "Keyword",
  },
}

local buttons = {
  type = "group",
  val = {
    dashboard.button("f", "󰈞  Find File", "<cmd>Telescope find_files<CR>"),
    dashboard.button("t", "󰊄  Find Text", "<cmd>Telescope live_grep<CR>"),
    dashboard.button("c", "  Configuration", "<cmd>edit $HOME/.dotfiles/.config/lvim/<CR>"),
    dashboard.button("q", "󰅖  Quit", "<cmd>q<CR>"),
  },
  position = "center",
  opts = {
    spacing = 1,
    hl_shortcut = "Include",
  },
}

lvim.builtin.alpha.dashboard.config = {
  layout = {
    { type = "padding", val = 20 },
    header,
    { type = "padding", val = 3 },
    buttons,
  },
  opts = {
    margin = 7,
    setup = function()
    end,
  },
}
