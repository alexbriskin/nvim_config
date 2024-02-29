require("config.options")
require("lazy").setup("plugins")  -- Loads plugins from lua/plugins/
require("config.lazy")
require("config.autocmds")
require("config.autocomplete")
require("config.filetypes")
require("config.keymaps")
require("config.lsp_status")
require("config.lsp_support")
require("config.plugins")
vim.cmd[[colorscheme tokyonight]]
