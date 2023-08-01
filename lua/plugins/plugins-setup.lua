local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    -- My plugins here
--    "kyazdani42/nvim-web-devicon",
    "folke/tokyonight.nvim",
    --telescope
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
      'nvim-tree/nvim-tree.lua',  -- 文档树
      requires = {
        'nvim-tree/nvim-web-devicons', -- 文档树图标
      }
    },

    {
      'nvim-lualine/lualine.nvim',  -- 状态栏
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }  -- 状态栏图标
    },

    {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
        require('dashboard').setup {
          -- config
        }
      end,
      dependencies = { {'nvim-tree/nvim-web-devicons'}}
    }

}


local opts = {} -- 注意要定义这个变量

require ("lazy").setup(plugins, opts)











