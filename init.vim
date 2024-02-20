let mapleader = " "

syntax on
syntax enable

" set rtp+=/opt/homebrew/opt/fzf
set nocompatible
set number
set shiftwidth=0
set relativenumber
set encoding=UTF-8
set tabstop=4
set softtabstop=-1
set autoindent
set nowritebackup
set mousemodel=extend
set updatetime=300
set signcolumn=yes
set cindent
set copyindent
set laststatus=2
set list
set listchars=tab:↪️\ ,trail:•,extends:#,nbsp:.,eol:↩
set cinkeys=0},0),0],o,O,!^F
set cino=g0,Ls,N-s,(0,u0,U1,Ws,m1,j1,J1,)50,#1,l1
set formatoptions+=j
set mouse=a
set wrap
" set colorcolumn=+1
set showcmd
set hlsearch
set nrformats=bin,hex,alpha
set history=300
set belloff=all

set clipboard=unnamed

set viminfo='1000,s10,h,%
set nobackup
set noundofile
set noswapfile
set guioptions=ac
set background=dark

nnoremap H ^
nnoremap L $

" Folding and Comments
if has('vim_starting')
  if has('folding')
    set foldmethod=marker
    set foldopen+=jump
  endif
  set commentstring=#\ %s
endif

" file fold
autocmd FileType c,cpp,cs,java,arduino,rust,typescript,javascript setlocal commentstring=//\ %s
autocmd FileType desktop              setlocal commentstring=#\ %s
autocmd FileType sql                  setlocal commentstring=--\ %s
autocmd FileType xdefaults            setlocal commentstring=!%s
autocmd FileType git,gitcommit,rust,typescript,javascript,css setlocal foldmethod=syntax foldlevel=99
" support vue
autocmd FileType vue                  setlocal commentstring=/**\ %s\ */
autocm FileType vue                   setlocal foldmethod=indent foldlevel=99

" plugin and coc config
let g:vim_home = expand('~/vim/')

let config_list = [
      \ 'coc/*.vim',
      \ 'after/plugin/*.vim',
      \]

for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor

"" open termguicolors
"" everforest config
if has('termguicolors')
          set termguicolors
endif

" ""gruvbox_material theme
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_better_performance = 1
" let g:airline_them = {'colorscheme' : 'gruvbox_material'}
" colorscheme gruvbox_material 

"github theme
colorscheme nightfly
" colorscheme gruvbox

" let g:everforest_background = 'hard'
" let g:everforest_better_performance = 1
" let g:airline_theme = 'everforest'
" colorscheme everforest

let g:plug_git_path = '/opt/homebrew/bin/git'
let g:gitgutter_git_executable = '/opt/homebrew/bin/git'

" fold setting
set foldenable
set fillchars=eob:\ ,fold:\ ,foldopen:,foldsep:\ ,foldclose:
" set foldcolumn=1
set foldcolumn=0
set foldlevel=99
set foldlevelstart=99

set statusline=%<%f\ %h%w%m%r\
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
set statusline+=%{exists('*coc#status')?'\ [coc:\ '.coc#status().']':''}
set statusline+=%=
set statusline+=%{exists('g:loaded_sleuth')?SleuthIndicator():''}
set statusline+=%-14.(%4l/%L,%c%V%)\ %P

" vim-script NERDTreeToggle
map <space>e :NERDTreeToggle<CR>
"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" space-p map :History
"nmap <C-p> <Cmd>History<CR>
" space-f map :Files
" nmap <space>f <Cmd>Files<CR>

let g:smartim_default = 'com.apple.keylayout.ABC'

" leaderF
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

let g:Lf_RgConfig = [
  \ "--max-columns=150",
  \ "--glob=!node_modules/*",
  \ "--glob=!package-lock.json",
  \ "--glob=!yarn.lock",
  \ "--glob=!dist/*",]

" LeaderF 
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_ShortcutF = "<C-p>"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'

nmap <leader>fg <Cmd>Leaderf rg<CR>

" nightflyCursorColor 
let g:nightflyCursorColor = v:true

