local plugin = {
  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    {'nvim-treesitter/nvim-treesitter-textobjects'}
  },
  opts = {
    indent = {
      enable = true,
    },
    highlight = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
          ['ab'] = '@block.outer',
          ['ib'] = '@block.inner',
        }
      },
      move = {
        enable = true,
        set_jumps = true,
	goto_next_start = {
          [']c'] = '@class.outer',
          [']b'] = '@block.outer',
	},
	goto_next_end = {
          ['[c'] = '@class.outer',
          ['[b'] = '@block.outer',
	},
	goto_previous_start = {
          [']C'] = '@class.outer',
          [']B'] = '@block.outer',
	},
	goto_previous_end = {
          ['[C'] = '@class.outer',
          ['[B'] = '@block.outer',
	},
      },
    },
    ensure_installed = {
         "c",
         "cpp",
         "cmake",
         "bash",
         "git_rebase",
         "gitcommit",
         "gitignore",
         "json",
         "json5",
         "lua",
         "luadoc",
         "luap",
         "make",
         "markdown",
         "markdown_inline",
         "python",
         "regex",
         "yaml",
    },
  }
}

function plugin.config(name, opts)
  require('nvim-treesitter.configs').setup(opts)
end

return plugin
