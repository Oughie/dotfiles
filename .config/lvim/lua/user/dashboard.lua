local leader = "SPC"

local function button(sc, txt, keybind, keybind_opts)
    local sc_ = sc:gsub("%s", ""):gsub(leader, "<leader>")

    local opts = {
        position = "center",
        shortcut = sc,
        cursor = 3,
        width = 50,
        align_shortcut = "right",
        hl_shortcut = "Keyword",
    }
    if keybind then
        keybind_opts = vim.F.if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
        opts.keymap = { "n", sc_, keybind, keybind_opts }
    end

    local function on_press()
        local key = vim.api.nvim_replace_termcodes(keybind or sc_ .. "<Ignore>", true, false, true)
        vim.api.nvim_feedkeys(key, "t", false)
    end

    return {
        type = "button",
        val = txt,
        on_press = on_press,
        opts = opts,
    }
end

lvim.builtin.alpha.dashboard.config = {
  layout = {
    { type = "padding", val = math.floor(vim.fn.winheight(0)) / 2 - 5 },
    {
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
        hl = "String"
      },
    },
    { type = "padding", val = 2 },
    {
      type = "group",
      val = {
        button("f", "󰈞  Find File", "<cmd>Telescope find_files<CR>"),
        button("t", "󰊄  Find Text", "<cmd>Telescope live_grep<CR>"),
        button("c", "  Configuration", "<cmd>edit $HOME/.dotfiles/.config/lvim/<CR>"),
        button("q", "󰅖  Quit", "<cmd>q<CR>"),
      },
      opts = {
        position = "center",
        spacing = 1,
        hl_shortcut = "Include",
      },
    },
  },
}
