return {
    "airblade/vim-gitgutter",
    -- lazy = true,
    -- event = "BufReadPost",
    config = function()
        vim.g.gitgutter_map_keys = 0

        vim.g.gitgutter_sign_added = '|'
        vim.g.gitgutter_sign_modified = '|'
        vim.g.gitgutter_sign_removed = '-'
        vim.g.gitgutter_sign_removed_first_line = '‾'
        vim.g.gitgutter_sign_removed_above_and_below = '{'
        vim.g.gitgutter_sign_modified_removed = '~'
        vim.cmd("GitGutterLineNrHighlightsEnable")
    end,
}
