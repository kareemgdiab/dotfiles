set relativenumber
syntax on
noswapfile
let mapleader = ' '

" allow backspace in insert mode
set backspace=indent,eol,start

" colors
set t_Co=256
set t_ut=
colorscheme codedark

" coc config
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-json', 'coc-prettier' ]
vmap <leader>i  <Plug>(coc-format-selected)
nmap <leader>i  <Plug>(coc-format-selected)

" airline status
let g:airline_theme = 'codedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

" custom mappings
map <leader>tt :tabnew <cr>
map <leader>tp :tabprevious <cr>
map <leader>tn  :tabnext <cr>
map <leader>tc :tabclose <cr>

" fzf
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
map <C-p> :call fzf#run({'source': 'rg --files', 'sink': 'e', 'down': '40%'}) <cr>
map <leader>f :Rg <cr>
