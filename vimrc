"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Vim-Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/Lokaltog/vim-easymotion'
Plug 'https://github.com/raimondi/delimitmate'
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/mg979/vim-visual-multi'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/lervag/vimtex'
Plug 'https://github.com/rbgrouleff/bclose.vim'
Plug 'https://github.com/tpope/vim-sensible'
Plug 'https://github.com/marblestation/vim-complex-sensible'

" Add plugins to &runtimepath
call plug#end()

" To automaticlly download everything:
"   :PlugInstall
"   :setlocal spell
"   :set spelllang=en_us,es,fr,ca
" To force donwload of English (and avoid some errors in OSX):
" cd .vim/spell/
" wget http://ftp.vim.org/vim/runtime/spell/en.utf-8.spl
" wget http://ftp.vim.org/vim/runtime/spell/en.utf-8.sug

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [BUG] Ignored from vim-complex-sensible, insist here
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS SETUP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='solarized'
let g:airline_left_sep=''
let g:airline_right_sep=''
"let g:airline_section_z=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#whitespace#enabled = 0 " Do not check for trailing whitespaces
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
"let NERDTreeWinSize=30

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Commenter plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDSpaceDelims=0
let g:NERDCustomDelimiters = {'python': {'left': '#'}}

""""""""""""""""""""""""""""""
" => Starify plugin
""""""""""""""""""""""""""""""
" Requires the following alias:
"alias vi='vim'


""""""""""""""""""""""""""""""
" => tagbar plugin
""""""""""""""""""""""""""""""
" It needs exuberant-ctags
map <leader>tt :TagbarToggle <CR>
let g:tagbar_compact = 1
let g:tagbar_sort = 0 " Sorted by order of appearence in the file


""""""""""""""""""""""""""""""
" => ALE plugin
""""""""""""""""""""""""""""""
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
"" run linters only when I save files
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
" Moving between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_set_signs = 0
let g:ale_set_highlights = 1


""""""""""""""""""""""""""""""
" => vim-visual-multi plugin
""""""""""""""""""""""""""""""
" Use :MultipleCursorsFind pattern
"
" Select a word in visual mode, press C-n to find repetition
let g:VM_theme = 'sand'
let g:VM_highlight_matches = ''
let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"]   = '<C-j>'
let g:VM_maps["Add Cursor Up"]     = '<C-k>'
let g:VM_maps["Add Cursor At Pos"] = '\\\'
let g:VM_maps["Find Next"] = '<c-n>'
let g:VM_maps["Find Prev"] = '<c-p>'
let g:VM_maps["Skip Region"] = '<c-x>'
let g:VM_maps["Switch Mode"] = '<Tab>' " switch between cursor and extend/visual mode
let g:VM_case_setting = 'sensitive'
let g:VM_use_first_cursor_in_line = 0
let g:VM_skip_shorter_lines = 1
let g:VM_single_mode_auto_reset = 0


""""""""""""""""""""""""""""""
" => Easy motion plugin
""""""""""""""""""""""""""""""
" Require tpope/vim-repeat to enable dot repeat support
"
let g:EasyMotion_do_mapping = 0 " Disable default mappings
"
""let g:EasyMotion_keys='hklyuiopnmqwertzxcvbasdgjf'
let g:EasyMotion_keys='asdghklqwertyuiopzxcvbnmfj'
"" With this option set, v will match both v and V, but V will match V only
let g:EasyMotion_smartcase = 1

map f <Plug>(easymotion-s)
map F <Plug>(easymotion-s2)
map t <Plug>(easymotion-bd-t)
map T <Plug>(easymotion-bd-t2)

"" Search with easy motion
"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
"" Without these mappings, `n` & `N` works fine. (These mappings just provide
"" different highlight method and have some other features )
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-bd-f)

" s{char}{char} to move to {char}{char}
nmap <Leader>s <Plug>(easymotion-s2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-bd-jk)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-bd-w)
map  <Leader>e <Plug>(easymotion-bd-e)
nmap <Leader>e <Plug>(easymotion-bd-e)


""""""""""""""""""""""""""""""
" => VimTex plugin
""""""""""""""""""""""""""""""
" * Requires latexmk (apt-get install latexmk)
let g:vimtex_quickfix_mode = 2 " 0 = not show, 1 = show and become active, 2 = show
let g:vimtex_compiler_method = 'latexmk'

"" Disable custom warnings based on regexp
"let g:vimtex_quickfix_ignore_filters = [
      "\ 'Warning',
      "\ 'warning',
      "\]

let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_automatic = 0
map <leader>lp :VimtexCompileSS<cr>
map <leader>lc :VimtexClean<cr>
map <leader>lt :VimtexTocToggle<cr>
map <leader>lo :VimtexView<cr>


""""""""""""""""""""""""""""""
" => startify plugin
""""""""""""""""""""""""""""""
let g:startify_custom_header = 'startify#pad(["Vim Startify"]) '
"let g:startify_bookmarks = [ {'s': '~/Sync/Thing/Notes/pages/ScratchPad.md'}, '~/Sync/Thing/Notes/pages/content.md' ]
let g:startify_bookmarks = [ {'s': '~/Sync/Thing/Notes/pages/ScratchPad.md'} ]
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
map <leader>ww :Startify<cr>


""""""""""""""""""""""""""""""
" => wiki.vim plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set it up to match logseq configuration
" - use ,ww  to open index
" - use ,w,w to open journal
" - follow double brackets links pressing enter
let g:wiki_root = '~/Sync/Thing/Notes/'
let g:wiki_index_name = 'pages/Index.md'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_journal = {
          \ 'name': 'journals',
          \ 'frequency': 'daily',
          \ 'date_format': {
          \   'daily' : '%Y_%m_%d',
          \   'weekly' : '%Y_w%V',
          \   'monthly' : '%Y_m%m',
          \ },
          \ 'index_use_journal_scheme': v:true,
          \}
let g:wiki_link_target_type = 'md'
