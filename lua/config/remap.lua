-- Explorer
-- vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)

-- Oil File Explorer
vim.keymap.set("n", "<leader>vv", "<CMD>Oil<CR>")

-- Yank to Clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+yg_')
vim.keymap.set("n", "<leader>yy", '"+yy')
vim.keymap.set("v", "<leader>y", '"+y')

-- Put from Clipboard
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>P", '"+P')

-- Move Highlighted Text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append line underneath without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in center of screen when going up and down.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps search term toggles in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete to null instead of yanking
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- Doing the whole line (dd) makes the single "d" feel slow. Probably will delete.
--vim.keymap.set({"n", "v"}, "<leader>dd", [["_dd]])

-- Changes all instances of the current word you are over in the file.
vim.keymap.set("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Replace all characters in line. WIP
-- Does not work
--vim.keymap.set("n", "<Leader>r", [[:normal! /<char><CR>c<new-char><Esc>]], { noremap =true, silent = true })

-- Insert arbitrary phrase
-- Haven't decided what to use this for yet
vim.keymap.set(
    "n",
    "<leader>ee",
    "oInsert<CR>This<CR>Text"
)

-- Write file easily
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("w")
end)
