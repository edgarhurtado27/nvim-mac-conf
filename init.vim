" polyglot
let g:polyglot_disabled = ['javascript']
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
so ~/.config/nvim/vim-plug/plugins.vim
so ~/.config/nvim/vim-plug/plugin-config.vim
so ~/.config/nvim/vim-plug/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
" set background=dark
" colorscheme oceanic_material
" let g:oceanic_material_background	= "darker"
" let g:oceanic_material_transparent_background	= 0
" let g:oceanic_material_allow_bold	= 1


highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

au BufNewFile,BufRead *.html set filetype=htmldjango

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

