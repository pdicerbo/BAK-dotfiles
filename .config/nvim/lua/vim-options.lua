vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("au VimLeave,VimSuspend * set guicursor=n-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150")


vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.relativenumber = true
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.list = true -- Show some invisible characters (tabs...
vim.opt.number = true -- Print line number
vim.opt.showmode = false -- Dont show mode since we have a statusline
vim.opt.smartindent = true -- Insert indents automatically
vim.opt.spelllang = { "en" }
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true

-- Shift visual selected lines
vim.keymap.set( "v", "<M-j>",       ":m '>+1<CR>gv=gv", { desc = "Shift visual selected lines down" } ) -- Shift visual selected lines down
vim.keymap.set( "v", "<M-k>",       ":m '<-2<CR>gv=gv", { desc = "Shift visual selected lines up" } ) -- Shift visual selected lines up
vim.keymap.set( "v", "<M-Down>",    ":m '>+1<CR>gv=gv", { desc = "Shift visual selected lines down" } ) -- Shift visual selected lines down
vim.keymap.set( "v", "<M-Up>",      ":m '<-2<CR>gv=gv", { desc = "Shift visual selected lines up" } ) -- Shift visual selected lines up

-- shift+arrow selection
vim.keymap.set( "n", "<S-Up>",      "v<Up>",          { desc = "shift+Up arrow selection (normal mode)" })
vim.keymap.set( "n", "<S-Down>",    "v<Down>",        { desc = "shift+Down arrow selection (normal mode)" })
vim.keymap.set( "v", "<S-Up>",      "<Up>",           { desc = "shift+Up arrow selection (visual mode)" })
vim.keymap.set( "v", "<S-Down>",    "<Down>",         { desc = "shift+Down arrow selection (visual mode)" })
vim.keymap.set( "v", "<S-Left>",    "<Left>",         { desc = "shift+Left arrow selection (visual mode)" })
vim.keymap.set( "v", "<S-Right>",   "<Right>",        { desc = "shift+Right arrow selection (visual mode)" })
vim.keymap.set( "i", "<S-Up>",      "<Esc>v<Up>",     { desc = "shift+Up arrow selection (insert mode)" })
vim.keymap.set( "i", "<S-Down>",    "<Esc>v<Down>",   { desc = "shift+Down arrow selection (insert mode)" })
vim.keymap.set( "i", "<S-Left>",    "<Esc>v<Left>",   { desc = "shift+Left arrow selection (insert mode)" })
vim.keymap.set( "i", "<S-Right>",   "<Esc>v<Right>",  { desc = "shift+Right arrow selection (insert mode)" })

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
