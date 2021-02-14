

"-----------------------------------------------------------
" Autoload plugin manager
"-----------------------------------------------------------
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"-----------------------------------------------------------
" Plugin management
"-----------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')


  " General utilities
  "---------------------------------------------------------

  " Bépo remaping
  Plug 'michamos/vim-bepo'

  " File explorer
  Plug 'scrooloose/nerdtree'

  " Intellisense Engine
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Denite - Fuzzy finding, buffer management
  Plug 'Shougo/denite.nvim'

  " editorconfig support
  Plug 'editorconfig/editorconfig-vim'

  " Auto closing for brackets
  Plug 'raimondi/delimitmate'

  " Align utils
  Plug 'junegunn/vim-easy-align'


  " Git utilities
  "---------------------------------------------------------

  " Enable git changes to be shown in sign column
  Plug 'mhinz/vim-signify'

  " Git command wrapper
  Plug 'tpope/vim-fugitive'


  " JS / TS plugins
  "---------------------------------------------------------

  " Typescript syntax highlighting
  Plug 'HerringtonDarkholme/yats.vim'

  " Improved syntax highlighting and indentation
  Plug 'othree/yajs.vim'

  " Generate JSDoc commands based on function signature
  Plug 'heavenshell/vim-jsdoc'

  " HTML / CSS plugins
  "---------------------------------------------------------
  " html css syntax highlighting 
  Plug 'othree/html5.vim'

  " match html tags
  Plug 'valloric/matchtagalways'


  " Docker
  "---------------------------------------------------------
  " Syntax coloration
  Plug 'ekalinin/dockerfile.vim'


  " Prisma
  "---------------------------------------------------------
  " Syntax coloration
  Plug 'pantharshit00/vim-prisma'

  " UI
  "---------------------------------------------------------
  " Default Colorscheme
  Plug 'mhartington/oceanic-next'
  Plug 'arcticicestudio/nord-vim'
  
  " Pywall colorscheme
  Plug 'dylanaraps/wal.vim'

  " Customized vim status line
  Plug 'vim-airline/vim-airline'

  " Icons
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'




  " auto-close plugin
  "Plug 'rstacruz/vim-closer'

  " Improved motion in Vim
  "Plug 'easymotion/vim-easymotion'

  " Snippet support
  "Plug 'Shougo/neosnippet'
  "Plug 'Shougo/neosnippet-snippets'

  " Print function signatures in echo area
  "Plug 'Shougo/echodoc.vim'

call plug#end()
