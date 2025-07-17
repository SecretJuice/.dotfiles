require("nvim-autopairs").setup({
      check_ts = true,       -- enable Treesitter integration
      map_cr = true,         -- auto close on Enter
      map_bs = true,         -- smart backspace
      map_c_h = false,       -- disable Ctrl-h mapping
      map_c_w = false,       -- disable Ctrl-w mapping
      disable_filetype = { "TelescopePrompt", "spectre_panel" },
      fast_wrap = {
        map = '<M-e>',       -- Alt-e to trigger wrapping
        chars = { '{', '[', '(', '"', "'" },
        pattern = [=[[%'%"%)%>%]%)%}%,]]=],
        end_key = '$',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
        check_comma = true,
        highlight = 'PmenuSel',
        highlight_grey='LineNr',
      },
})
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
