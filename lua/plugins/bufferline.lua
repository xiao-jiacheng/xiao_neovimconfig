-- keymap
vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>q", ":BufferLinePickClose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLinePick<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>-", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>+", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>m+", ":lua require'bufferline'.move_to(1)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>m-", ":lua require'bufferline'.move_to(-1)<CR>", {noremap = true, silent = true})


vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "coc",
        numbers = "ordinal",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}


