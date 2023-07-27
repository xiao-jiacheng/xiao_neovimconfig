vim.g.mapleader = ","

local keymap = vim.keymap

--vim.keymap.set('n', '*', '*zz', {desc = 'Search and center screen'})
--vim.keymap.set('n', 'n', 'nzz', {desc = 'Search and center screen'})


-- -----------------  插入模式  -----------------
-- keymap.set("i", "jk" , "<ESC>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-f>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
--
--
-- -----------------  普通模式  -----------------
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<F2>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>cs", ":colorscheme<CR>")
