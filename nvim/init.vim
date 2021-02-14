scriptencoding utf-8

" Load plugins management file
source ~/.config/nvim/plugins.vim

"-----------------------------------------------------------
" General settings
"-----------------------------------------------------------

  " Hide buffers instead of closing them
  set hidden
  
  " Show partial commands in the last line of the screen
  set showcmd 

  " Highlight searches
  set hlsearch

  " Autoindent at new line
  set autoindent

  " Ask to save changes before leaving
  set confirm

  " Visual bell instead of beeping
  set visualbell

  " Enable mouse for all modes
  set mouse=a

  " Only one line for command line
  set cmdheight=2

  " Automatically re-read file if a change was detected outside of vim
  set autoread

  " Never hide text with 'conceal' syntax attribute
  set conceallevel=0

  " Backup feature can cause bugs with server languages
  set nobackup
  set nowritebackup

  " Better experience for diagnostic messages
  set updatetime=300
  
  " Use system clipboard
  "set clipboard+=unnamedplus

" Usability options
  "set backspace=indent,eol,start      " Allow backspacing over autoindent, line breaks and start of insert action
  "set nostartofline       "Stop certain movements from always going to the first character of a line.


  " Line / Cursor settings
  "---------------------------------------------------------
  " Display line numbers
  set number

  " Do not wrap long lines by default
  set nowrap

  " Don't highlight current cursor line
  set cursorline

  " Disable line/column number in status line
  " Shows up in preview window when airline is disabled if not
  set noruler

  " Only one line for command line
  set cmdheight=1

  " Tab and space settings
  "---------------------------------------------------------
  " Insert spaces when TAB is pressed.
  set expandtab

  " Change number of spaces that a <Tab> counts for during editing ops
  set softtabstop=2

  " Indentation amount for < and > commands.
  set shiftwidth=2


  " Use case insensitive search, except when using capital letters
  "---------------------------------------------------------
  set ignorecase
  set smartcase
  
"-----------------------------------------------------------
" Plugin configuration
"-----------------------------------------------------------


  " Coc config
  "---------------------------------------------------------
  " use <C-t> for trigger completion and navigate to the next complete item
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  

  " Denite config
  "---------------------------------------------------------
   
  " Use ripgrep for searching current directory for files
  " By default, ripgrep will respect rules in .gitignore
  "   --files: Print each file that would be searched (but don't search)
  "   --glob:  Include or exclues files for searching that match the given glob
  "            (aka ignore .git files)
  "
  call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git'])
  

  " NERDTree config
  "---------------------------------------------------------
  " Open NERDTree automaticaly at start
  autocmd vimenter * NERDTree

  " Show hidden files
  let NERDTreeShowHidden=1

  " Hide swap files and Git folders
  let NERDTreeIgnore = ['\.swp$', '\.git$[[dir]]']


  " Remove bookmarks and help text from NERDTree
  let g:NERDTreeMinimalUI = 1



"-----------------------------------------------------------
" Key mappings configuration
"-----------------------------------------------------------
"
 " General mappings
  "---------------------------------------------------------
  " Leave insert or virtual mode with 'ii'
  inoremap ii <Esc>
  vnoremap ii <Esc>

  " Coc mappings
  "---------------------------------------------------------
  " <C-t> triggers completion list
  " and allow to navigate forward
  inoremap <silent><expr> <C-t>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<C-t>" :
        \ coc#refresh()

  " <C-s> allow to navigate backward in completion list
  inoremap <expr> <C-s> pumvisible() ? "\<C-p>" : "\<C-s>"

  " Use <C-v> to confirm completion.
  " Coc only does snippet and additional edit on confirm.
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Use `[g` and `]g` to navigate diagnostics
  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Use K to show documentation in preview window
  nnoremap <silent> K :call CocActionAsync('doHover')<CR>

 " NERDTree mappings
  "---------------------------------------------------------
  " Remap the navigation keys
  let NERDTreeMapOpenInTab='\t'
  let NERDTreeMapRefresh='u'
  let NERDTreeMapActivateNode='o'
  let NERDTreeMapPreview='O'
  let NERDTreeMapOpenVSplit='e'
  let NERDTreeMapPreviewVSplit='E'
  let NERDTreeMapCloseDir='x'
  let NERDTreeMapCloseChildren='X'
  let NERDTreeMapJumpNextSibling='t'
  let NERDTreeMapJumpPrevSibling='s'
  let NERDTreeMapJumpLastChild='T'
  let NERDTreeMapJumpFirstChild='S'
  let NERDTreeMapJumpParent='c'
  let NERDTreeMapJumpRoot='C'

"-----------------------------------------------------------
" UI
"-----------------------------------------------------------

  " Set color scheme
  colorscheme nord
  "colorscheme wal
  set guifont=$FONT

  " No background
  "hi Normal guibg=NONE ctermbg=NONE
  "hi NonText guibg=NONE ctermbg=NONE

