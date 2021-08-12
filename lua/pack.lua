-- Packer.nvim
-- Bootstrap Packer.nvim if it doesn't exist
local install_path = vim.fn.stdpath('data') ..
                         '/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command(
        '!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    vim.cmd [[:q!]]
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost packer.lua PackerCompile'


-- Packer.nvim Plugins
require('packer').startup({
    function(use)
        -- Let Packer manage itself
        use {'wbthomason/packer.nvim', opt = true}

        -- TreeSitter
        use "nvim-treesitter/nvim-treesitter"
        use "p00f/nvim-ts-rainbow"
        use "nvim-treesitter/nvim-treesitter-refactor"
		use 'windwp/nvim-ts-autotag'

        -- Neovim LSP
        use "neovim/nvim-lspconfig"

		-- Neovim Completion
        use "hrsh7th/nvim-compe"
        -- Snippets
        use "hrsh7th/vim-vsnip"
		-- Autopairs
		use 'windwp/nvim-autopairs'

		-- For statusline and Tab Bar
        use {
            'hoob3rt/lualine.nvim',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}
        }

        use {
            'akinsho/nvim-bufferline.lua',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}
        }

		-- File Explorer
		use {
    		'kyazdani42/nvim-tree.lua',
			requires = 'kyazdani42/nvim-web-devicons'
		}

		-- Themes
		use 'joshdick/onedark.vim'
		use 'liuchengxu/space-vim-theme'

		-- TeleScope
        use {
            'nvim-telescope/telescope.nvim',
            requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
        }

		-- Snippets
		use "glepnir/lspsaga.nvim"
		use "kosayoda/nvim-lightbulb"

		-- Git
		use {
			'lewis6991/gitsigns.nvim',
  			requires = { 'nvim-lua/plenary.nvim' }
		}

		use {
			'rhysd/conflict-marker.vim'
		}

    end,
    config = {display = {open_fn = require"packer.util".float}}
})
