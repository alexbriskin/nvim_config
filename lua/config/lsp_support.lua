local cmp_nvim_lsp = require'cmp_nvim_lsp'
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_status = require('lsp-status')

require'lspconfig'.clangd.setup{
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--fallback-style=llvm",
  },
  handlers = lsp_status.extensions.clangd.setup(),
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    clangdFileStatus = true,
  },
  capabilities = lsp_status.capabilities,
  on_attach = lsp_status.on_attach,
}

require("clangd_extensions").setup({
  server = {
    cmd = { "clangd", "--background-index", "--suggest-missing-includes" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = function() return vim.loop.cwd() end,
    init_options = {
      clangdFileStatus = true, -- enable file status feature
      usePlaceholders = true,
      completeUnimported = true,
      semanticHighlighting = true,
    },
    on_attach = function(client, bufnr)
      -- Set up buffer-local key mappings here, if desired
    end,
  },
  -- Other `clangd_extensions` specific configurations
})

