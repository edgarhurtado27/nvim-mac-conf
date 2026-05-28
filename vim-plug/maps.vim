let mapleader=" "

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

" split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" quick semi
nnoremap <Leader>; $a;<Esc>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" shorter commands
cnoreabbrev blame Gblame
cnoreabbrev diff Gdiff
cnoreabbrev eslintfix CocCommand eslint.executeAutofix

function PrettyjsonFunc()
  :%python -m json.tool
  :set syntax=json
endfunction

cnoreabbrev pj exec PrettyjsonFunc()

" plugs
nnoremap <Leader>e :Neotree reveal<CR>
map <Leader>p :Files<CR>
map <Leader>rg :Rg<CR>
map <Leader>fs :Ag<CR>

" tmux navigator
nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>

" buffer navigator
nnoremap <Leader> bd :bd!<cr>

" Remap surround to lowercase s so it does not add an empty space
xmap s <Plug>VSurround
" diagnostics
nnoremap <leader>kp :let @*=expand("%")<CR>

" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" buffers
map <Leader>ob :Buffers<cr>

" keeping it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" git
nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gl :Git pull<cr>

" run current file
nnoremap <Leader>x :!node %<cr>

" Terminal
nnoremap <C-t> :lua toggle_float_term()<CR>
tnoremap <C-t> <C-\><C-n>:lua toggle_float_term()<CR>

" Helpful mappings for IDE style
lua << EOF
local opts = { noremap=true, silent=true }

-- =========================
-- LSP NAVIGATION
-- =========================
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

-- =========================
-- INFO / DOCUMENTATION
-- =========================
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

-- =========================
-- ACTIONS (IDE STYLE)
-- =========================
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

-- =========================
-- DIAGNOSTICS
-- =========================
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- Commented due to conflicts
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts) 
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
EOF

