return {
    "mg979/vim-visual-multi",
    lazy = false,
    init = function()
        vim.g.VM_default_mappings = 0
        vim.g.VM_mouse_mappings = 1
        -- vim.g.VM_maps = {
            -- ["Visual All"] = "<C-F2>",
        -- }
        vim.keymap.set("n", "<C-n>",            "<Plug>(VM-Find-Under)",          { desc = "Select the word under cursor" } )
        vim.keymap.set("n", "<C-n>",            "<Plug>(VM-Find-Subword-Under)",  { desc = "Select the word under cursor (from visual mode, without word boundaries)" } )
        vim.keymap.set("n", "<C-Up>",           "<Plug>(VM-Add-Cursor-Up)",       { desc = "Create cursors vertically" } )
        vim.keymap.set("n", "<C-Down>",         "<Plug>(VM-Add-Cursor-Down)",     { desc = "Create cursors vertically" } )
        vim.keymap.set("n", "<C-F2>",           "<Plug>(VM-Select-All)",          { desc = "Select all occurrences of a word" } )
        vim.keymap.set("n", "<C-F3>",           "<Plug>(VM-Start-Regex-Search)",  { desc = "Create a selection with regex search" } )
        vim.keymap.set("n", "<C-LeftMouse>",    "<Plug>(VM-Mouse-Cursor)",        { desc = "Create a cursor where clicked" } )
        vim.keymap.set("n", "<M-LeftMouse>",    "<Plug>(VM-Mouse-Column)",        { desc = "Create a column, from current cursor to clicked position" } )
        vim.keymap.set("n", "<leader>p",        "<Plug>(VM-Add-Cursor-At-Pos)",   { desc = "add a single cursor at current position" } )

        vim.keymap.set("v", "<C-F2>",           "<Plug>(VM-Visual-All)",          { desc = "Sselect all occurrences of visual selection" } )
        vim.keymap.set("v", "<C-F3>",           "<Plug>(VM-Visual-Regex)",        { desc = "Find a pattern in visual selection" } )
    end,
}
