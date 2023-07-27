require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- nvim 自带lsp客户端
-- lsp服务端 language server 由mason管理下载  
-- mason-lspconfig 为适配插件，让下载语言服务器更简便  使用方法 ensure_installed 可以自动安装
-- lspconfig插件启动 各语言启动选项可设置

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd"}, --, "gopls"},
}


require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...

require("lspconfig").lua_ls.setup {}
require("lspconfig").clangd.setup {}


