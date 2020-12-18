
let path = "~/AppData/Local"

if has('unix')
  let path = "~/.config"
endif

call plug#begin(path.'/nvim/autoload/plugged')
" File Explorer
" Plug 'preservim/nerdtree'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
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
call plug#end()
