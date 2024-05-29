-- for all
vim.cmd([[autocmd FileType * highlight! Boolean guifg=#ff4394 gui=bold guibg=#1C0000]])
vim.cmd([[autocmd FileType * highlight! Keyword guifg=#ff4394 gui=bold guibg=#1C0011]])
vim.cmd([[autocmd FileType * highlight! @keyword guifg=#ff4394 gui=bold guibg=#1C0011]])
vim.cmd([[autocmd FileType * highlight! javaScriptKeyword guifg=#ff4394 gui=bold guibg=#1C0011]])
vim.cmd([[autocmd FileType * highlight! Conditional guifg=#ff4394 gui=bold guibg=#1C0000]])
vim.cmd([[autocmd FileType * highlight! @exception gui=bold guibg=#1C0011 guifg=#ff4394]])
vim.cmd([[autocmd FileType * highlight! Special gui=bold guibg=#000B1C guifg=#29adff]])
vim.cmd([[autocmd FileType * highlight! @string gui=bold guifg=#00ff00]])
vim.cmd([[autocmd FileType * highlight! @constructor gui=bold guibg=#000B1C guifg=#29adff]])
vim.cmd([[autocmd FileType * highlight! @operator gui=bold guifg=#ff0000]])
vim.cmd([[autocmd FileType * highlight! @variable gui=bold guibg=#1C1100]])
vim.cmd([[autocmd FileType * highlight! @variable.builtin gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @punctuation gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @punctuation.bracket gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @punctuation.delimeter gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @punctuation.special gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @character.special gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @punctuation gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @punctuation.delimiter gui=bold guifg=red]])
vim.cmd([[autocmd FileType * highlight! @parameter gui=bold guifg=#ffb20f guibg=#1C1100]])
vim.cmd([[autocmd FileType * highlight! @function.call guifg=#26adff gui=bold guibg=#000B1C]])
vim.cmd([[autocmd FileType * highlight! @function guifg=#26adff gui=bold guibg=#000B1C]])
vim.cmd([[autocmd FileType * highlight! @function.builtin gui=bold guibg=#17001C]])
vim.cmd([[autocmd FileType * highlight! @keyword.function gui=bold guifg=#ff4394 guibg=#1C0011]])
vim.cmd([[autocmd FileType * highlight! @keyword.return gui=bold guifg=#ff4394 guibg=#1C0011]])
vim.cmd([[autocmd FileType * highlight! @repeat gui=bold guifg=#ff4394 guibg=#1C0011]])
vim.cmd([[autocmd FileType * highlight! @property gui=bold guifg=#26adff guibg=#1C1100 ]])
vim.cmd([[autocmd FileType * highlight! @tag.delimiter gui=bold guifg=#008E8E guibg=#001c1c]])
vim.cmd([[autocmd FileType * highlight! @tag gui=bold guifg=#E30000  guibg=#1C0000]])
vim.cmd([[autocmd FileType * highlight! @float gui=bold guifg=#ff0000]])
vim.cmd([[autocmd FileType * highlight! @number gui=bold guifg=#ff0000]])
vim.cmd([[autocmd FileType * highlight! @keyword.operator guifg=#ff4394 gui=bold]])
vim.cmd([[autocmd FileType * highlight! @comment gui=bold guifg=#008E8E]])
vim.cmd([[autocmd FileType * highlight! tomlComment gui=bold guifg=#008E8E]])
vim.cmd([[autocmd FileType * highlight! HLChunk1 gui=bold]])
vim.cmd([[autocmd FileType * highlight! HLChunk2 gui=bold]])
vim.cmd([[autocmd FileType * highlight! HLIndent1 gui=bold]])
vim.cmd([[autocmd FileType * highlight! HLIndent2 gui=bold]])
vim.cmd([[autocmd FileType * highlight! HLIndent3 gui=bold]])
vim.cmd([[autocmd FileType * highlight! HLIndent4 gui=bold]])
vim.cmd([[autocmd FileType * highlight! HLIndent5 gui=bold]])
vim.cmd([[autocmd FileType * highlight! HLIndent6 gui=bold]])
vim.cmd([[autocmd FileType * highlight! CursorLine guibg=#111311]])
vim.cmd([[autocmd FileType * highlight! @constant.builtin gui=bold guifg=#ff4394 guibg=#1c0011]])
vim.cmd([[autocmd FileType * highlight! @function.method.call gui=bold guifg=#29adff guibg=#000B1C]])
vim.cmd([[autocmd FileType * highlight! @keyword.exception gui=bold guifg=#ff4394 guibg=#1c0011]])
vim.cmd([[autocmd FileType * highlight! @lsp.type.params guifg=#ffb20f gui=bold]])
vim.cmd([[autocmd FileType * highlight! @lsp.type.property gui=bold guifg=#29a]])
vim.cmd([[autocmd FileType * highlight! @function.builtin gui=bold guifg=#29adff]])
vim.cmd([[autocmd FileType * highlight! @function.method gui=bold guifg=#29adff]])
vim.cmd([[autocmd FileType * highlight! @method gui=bold guifg=#29adff]])
vim.cmd([[autocmd FileType * highlight! @method.call gui=bold guifg=#29adff]])
vim.cmd([[autocmd FileType * highlight! @keyword.repeat gui=bold guifg=#ff4394]])
vim.cmd([[autocmd FileType * highlight! Identifier gui=bold guifg=#ffb20f]])
vim.cmd([[autocmd FileType * highlight! @variable.parameter gui=bold guifg=#ffb20f]])
vim.cmd([[autocmd FileType * highlight! @variable.member gui=bold guifg=#29adff]])
vim.cmd([[autocmd FileType * highlight! @keyword.conditional gui=bold guifg=#ff4394]])
vim.cmd([[autocmd FileType * highlight! @keyword.import guifg=#ff4394 gui=bold]])
vim.cmd([[autocmd FileType * highlight! Search guifg=#1a1a1a]])
-- Function to set terminal colors
function SetTerminalColors()
    vim.cmd("highlight Normal guibg=#1c1c1c guifg=#ffffff")  -- Example: dark background with white text
    vim.cmd("highlight TermCursor guibg=#ffffff guifg=#000000")  -- Cursor color in terminal
    vim.cmd("highlight TermCursorNC guibg=#ffffff guifg=#000000")  -- Non-active cursor color
end

-- Function to restore normal colors
function RestoreNormalColors()
    vim.cmd("highlight Normal guibg=#282c34 guifg=#abb2bf")  -- Replace with your normal colors
    vim.cmd("highlight TermCursor guibg=#abb2bf guifg=#282c34")
    vim.cmd("highlight TermCursorNC guibg=#abb2bf guifg=#282c34")
end

-- Autocommand to set terminal colors
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
        SetTerminalColors()
    end
})

-- Autocommand to restore colors when leaving terminal
vim.api.nvim_create_autocmd("BufLeave", {
    pattern = "term://*",
    callback = function()
        RestoreNormalColors()
    end
})

-- Key mapping to open a horizontal terminal split
vim.api.nvim_set_keymap('n', '<leader>th', ':split | terminal<CR>', { noremap = true, silent = true })

-- C++,C,Java,C#,GoLang
vim.cmd([[autocmd FileType cpp,c,java,cs,go highlight! @type.builtin gui=bold guifg=#ff4394]])
vim.cmd([[autocmd FileType cpp,c highlight! Type gui=bold guifg=#ff4394]])

-- Java
vim.cmd([[autocmd FileType java highlight! Type gui=bold guifg=#ffb20f]])

