vim.g.mapleader = ' '

-- Set Explore
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- Vertically shift visual blocks
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- XClip-based clipboard provider. It's meant to strip the carriage returns
-- off, but it's not working. Needs looked into.
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
