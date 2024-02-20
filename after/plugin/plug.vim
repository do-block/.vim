call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/gruvbox-material'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
Plug 'mg979/vim-visual-multi'
Plug 'github/copilot.vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'junegunn/vim-easy-align'
Plug 'sickill/vim-monokai'
Plug 'ziglang/zig.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'vim-scripts/The-NERD-tree'
Plug 'justinmk/vim-sneak'
" Theme
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
" Plug 'morhetz/gruvbox'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
" Plug 'sainnhe/everforest'
call plug#end()

" vim-sneak
let g:sneak#label = 1
 map f <Plug>Sneak_s
 map F <Plug>Sneak_S

" dd 
let g:gitgutter_sign_priority=0
let g:gitgutter_sign_added='+'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_removed_first_line='-↑'
let g:gitgutter_sign_modified='*'
let g:gitgutter_sign_modified_removed='*-'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
