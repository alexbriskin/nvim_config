local lsp_status = require('lsp-status')
require('lualine').setup({
  sections = {
    lualine_b = {'branch'},  -- for git branch
    lualine_c = {
      { 'filename', 
        file_status = true,  -- displays file status (readonly status, modified status)
        path = 0  -- 1 = relative path, 0 = just filename
      },
	  { lsp_status.status }
    },
    -- other sections
  },
  inactive_sections = {
    -- your inactive sections here
  },
  extensions = {'fugitive'}  -- for git integration
})

