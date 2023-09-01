

require('user.keymaps')


require('user.options')


-- 插件

require('plugins.plugins-setup')

-- 主题色由插件管理lazy管理，在插件lazy加载后加载
require('user.colorscheme')
 
require('plugins.lualine')

require('plugins.nvim-tree')

require('plugins.telescope')

require('plugins.startup_screen')

require('plugins.bufferline')

require('coc.coc')

--require('plugins.indent_blankline')

--require('lsp.lsp')

--require('plugins.markdown-preview')

--require('alpha')











































































