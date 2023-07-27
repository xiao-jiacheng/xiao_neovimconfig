-- 自动安装
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字

-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
--   augroup end
-- ]])


-- 启动使用插件
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  use('kyazdani42/nvim-web-devicons')
 
  use 'folke/tokyonight.nvim' -- 主题

  use {
    'nvim-lualine/lualine.nvim',  -- 状态栏
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }  -- 状态栏图标
  }

  use {
    'nvim-tree/nvim-tree.lua',  -- 文档树
    requires = {
      'nvim-tree/nvim-web-devicons', -- 文档树图标
    }
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  


  use "lukas-reineke/indent-blankline.nvim"

  -- mason
  use {
      "williamboman/mason.nvim",
      run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  -- lspconfig
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/mason-lspconfig.nvim'}


  --初始界面
  use('glepnir/dashboard-nvim')


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)



-- :PackerInstall
-- :PackerUpdate
-- :PackerClean
-- :PakcerSync













