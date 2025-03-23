return {
    'xiyaowong/transparent.nvim',

    --[[
    Control with:
    :TransparentDisable
    :TransparentEnable
    :TransparentToggle

    Don't really need keymaps.
    ]]

    --[[
    -- Copy / Pasted below from the GitHub page
    -- Optional, you don't have to run setup.
    require("transparent").setup({
        -- table: default groups
        groups = {
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
            'EndOfBuffer',
        },
        -- table: additional groups that should be cleared
        extra_groups = {},
        -- table: groups you don't want to clear
        exclude_groups = {},
        -- function: code to be executed after highlight groups are cleared
        -- Also the user event "TransparentClear" will be triggered
        on_clear = function() end,
    })
    ]]
}
