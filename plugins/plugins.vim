
let path = "~/AppData/Local"

if has('unix')
  let path = "~/.config"
endif

call plug#begin(path.'/nvim/autoload/plugged')
" File Explorer
"Plug 'preservim/nerdtree'
Plug 'dstein64/vim-startuptime'

"
Plug 'neovim/nvim-lspconfig'

" Omnisharp
Plug 'OmniSharp/omnisharp-vim'


" Themes
Plug 'joshdick/onedark.vim'
"Plug 'iCyMind/NeoSolarized'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
	
" Completion
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
  
" File Management
Plug 'mhinz/vim-startify'

" Git Integration
Plug 'mhinz/vim-signify'

" Maps key to fast actions
Plug 'liuchengxu/vim-which-key'

" Commentary
Plug 'tpope/vim-commentary'

" Better terminal integration
Plug 'voldikss/vim-floaterm'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" EditConfig
Plug 'editorconfig/editorconfig-vim'

" Snippets
Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'


Plug 'dense-analysis/ale'
call plug#end()

