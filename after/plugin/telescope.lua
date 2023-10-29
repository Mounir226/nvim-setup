print("Hi from telescope lua")

-- Require the telescope module to access its functions
local telescope = require('telescope')

telescope.setup({
    defaults = {
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        file_ignore_patterns = {
            "node_modules/.*",
            "%.env",
            "yarn.lock",
            "package-lock.json",
            "lazy-lock.json",
            "init.sql",
            "target/.*",
            ".git/.*",
        }}})

local builtin = require('telescope.builtin')
vim.keymap.set('n','<leader>pf', builtin.find_files,{})
vim.keymap.set('n','<C-p>', builtin.git_files,{})
vim.keymap.set('n','<leader>ps', function () 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

