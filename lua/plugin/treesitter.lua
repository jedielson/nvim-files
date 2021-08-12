-- TreeSitter
require('nvim-treesitter.configs').setup{
 	ensure_installed = {
		"c_sharp",
		"tsx",
    	"toml",
	    "javascript",
		"typescript",
	    "json",
	    "yaml",
	    "html",
	    "scss",
		"css",
		"dockerfile",
		"go",
		"graphql",
		"hcl",
		"jsdoc",
		"lua",
		"python",
		"regex"
	},
	highlight = {
		enable = true,
		disable = {}
	},
	indent = {
		enable = false,
	},
	incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
        },
    },
	-- Plugin Refactor
	refactor = {
		highlight_definitions = { enable = true },
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr"
			},
			navigation = {
				enable = true,
				keymaps = {
					goto_definition = "tgd",
					list_definitions = "tld",
					list_definitions_toc = "tdt",
					goto_next_usage = "<a-*>",
					goto_previous_usage = "<a-#>"
				}
			}
		}
	},
	-- Plugin Rainbow.
	-- Realces parentheses and etc
	rainbow = {
        enable = true,
        extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
        max_file_lines = 1000 -- Do not enable for files with more than 1000 lines, int
    },
	-- Plugin Autotag
	autotag = {
		enable = true
	}
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
