vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.g.clipboard = {
    name = "XClipClipboard",
    copy = {
        ['+']= "xclip -selection clipboard",
        ['*']= "xclip -selection primary",
    },
    paste = {
        ['+']= "xclip -selection clipboard -o | sed 's/\\r//g'",
        ['*']= "xclip -selection primary -o | sed 's/\\r//g'",    
    },
    cache_enabled = false,
}
