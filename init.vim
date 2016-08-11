""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"                         ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
"                         ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
"                         ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
"                         ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
"                         ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
"                         ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Johannes Ziegenbalg <Johannes.Ziegenbalg@gmail.com>
" Source: https://github.com/JoZie/dotfiles-nvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Dein.vim plug-in manager {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    if &compatible
        set nocompatible " Be iMproved
    endif

    " Required:
    set runtimepath^=~/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

    " Required:
    call dein#begin(expand('~/.config/nvim/bundle'))

    " Let dein manage dein
    " Required:
    call dein#add('Shougo/dein.vim')

">> Color schemes <<{{{ ----------------------------------------------------------------------------
    " A Vim color scheme.
    call dein#add('sjl/badwolf')
    " summerfruit color scheme in 256 colors
    call dein#add('vim-scripts/summerfruit256.vim')
    " 256 colors version of github vim colorscheme
    call dein#add('joedicastro/vim-github256')
    " 256 Colors Version of Molokai Vim theme
    call dein#add('joedicastro/vim-molokai256')
    " precision colorscheme for the vim text editor
    call dein#add('altercation/vim-colors-solarized')
"}}} -----------------------------------------------------------------------------------------------

">> General tools & libraries <<{{{ ----------------------------------------------------------------
    " Interactive command execution in Vim.
    call dein#add('Shougo/vimproc.vim', {'build': 'make'})
    " A code-completion engine for Vim
    call dein#add('Valloric/YouCompleteMe', {'build': 'python2 install.py --clang-completer'})
"}}} -----------------------------------------------------------------------------------------------

">> Text-Objects <<{{{ -----------------------------------------------------------------------------
    " Vim plugin: Create your own text objects http://www.vim.org/scripts/script.php?script_id=2100
    call dein#add('kana/vim-textobj-user')
    " Vim plugin: Text objects for functions http://www.vim.org/scripts/script.php?script_id=2619
    call dein#add('kana/vim-textobj-function')
    " Vim plugin: Text objects for entire buffer
    call dein#add('kana/vim-textobj-entire')
    " Vim plugin: Text objects for indented blocks of lines
    call dein#add('kana/vim-textobj-indent')
    " Vim plugin: Text objects for foldings
    call dein#add('kana/vim-textobj-fold')
    " Vim text objects for comments
    call dein#add('glts/vim-textobj-comment')
    " Vim plugin: Text objects for the current line
    call dein#add('kana/vim-textobj-line')
"}}} -----------------------------------------------------------------------------------------------

">> Other language support <<{{{ -------------------------------------------------------------------
    " Vim support for editing R code
    call dein#add('jalvesaq/Nvim-R')
"}}} -----------------------------------------------------------------------------------------------

">> Programming <<{{{ ------------------------------------------------------------------------------
    " Syntax checking hacks for vim
    call dein#add('scrooloose/syntastic')
    " UltiSnips is the ultimate solution for snippets in Vim.
    call dein#add('SirVer/ultisnips')
    " vim-snipmate default snippets
    call dein#add('honza/vim-snippets')
    " Generates a doxygen comment skeleton for a C, C++ or Python function or class
    call dein#add('vim-scripts/DoxygenToolkit.vim')
    " Vim plugin for intensely orgasmic commenting
    call dein#add('scrooloose/nerdcommenter')
    "  commentary.vim: comment stuff out
    call dein#add('tpope/vim-commentary')
    " Vim plug-in for the Perl module / CLI script 'ack' (compatible witch ag)
    call dein#add('mileszs/ack.vim')
"}}} -----------------------------------------------------------------------------------------------

">> Motions & commands <<{{{ -----------------------------------------------------------------------
    " Vim motions on speed!
    call dein#add('Lokaltog/vim-easymotion')
    " quoting/parenthesizing made simple
    call dein#add('tpope/vim-surround')
    "  enable repeating supported plugin maps with "."
    call dein#add('tpope/vim-repeat')
    " Plugin to move lines and selections up and down
    call dein#add('matze/vim-move')
"}}} -----------------------------------------------------------------------------------------------

">> UI and dialogues <<{{{ -------------------------------------------------------------------------
    " A tree explorer plugin for vim.
    call dein#add('scrooloose/nerdtree')
    " It tries to find out root project directory in NERD_tree.
    call dein#add('git@github.com:JohannesZiegenbalg/NERD-tree-project.git')
    " Vim plugin that displays tags in a window, ordered by scope
    call dein#add('majutsushi/tagbar')
    " The ultimate vim statusline utility.
    call dein#add('bling/vim-airline')
    " Show a diff via Vim sign column.
    call dein#add('mhinz/vim-signify')
    " Graph your Vim undo tree in style.
    call dein#add('sjl/gundo.vim')
    " HiCursorWords : Highlights words under the cursor
    call dein#add('jkerian/HiCursorWords')
    " True Sublime Text style multiple selections for Vim
    call dein#add('terryma/vim-multiple-cursors')
    " The fancy start screen for Vim.
    call dein#add('mhinz/vim-startify')
    " rainbow parentheses improved, shorter code, no level limit, smooth and fast, powerful configuration.
    call dein#add('luochen1990/rainbow')
"}}} -----------------------------------------------------------------------------------------------

">> SCM stuff <<{{{ -------------------------------------------------------------------------
    " fugitive.vim: a Git wrapper so awesome, it should be illegal
    call dein#add('tpope/vim-fugitive')
    " A new way to use git within vim
    call dein#add('jreybert/vimagit')
    " gitk for Vim. http://www.gregsexton.org/portfolio/gitv/
    call dein#add('gregsexton/gitv')
"}}} -----------------------------------------------------------------------------------------------

">> Text stuff <<{{{ -------------------------------------------------------------------------------
    " Building on Vim’s spell-check and thesaurus/dictionary completion
    call dein#add('reedes/vim-lexical')
"}}} -----------------------------------------------------------------------------------------------

">> Unite.vim <<{{{ --------------------------------------------------------------------------------
    " The unite or unite.vim plug-in can search and display information from arbitrary sources
    call dein#add('Shougo/unite.vim')
    " quickfix source for unite.vim
    call dein#add('sgur/unite-qf')
    " help source for unite.vim
    call dein#add('tsukkee/unite-help')
    " unite.vim colorscheme chooser
    call dein#add('ujihisa/unite-colorscheme')
    " unite.vim FileType chooser
    call dein#add('osyo-manga/unite-filetype')
    " open most recently used files with unite.vim
    call dein#add('Shougo/neomru.vim')
    " Unite source for GNU GLOBAL
    call dein#add('hewes/unite-gtags')
    " outline source for unite.vim
    call dein#add('Shougo/unite-outline')
    " search through folds with unite.vim
    call dein#add('osyo-manga/unite-fold')
    " Unite plugin that provides spell suggestions
    call dein#add('kopischke/unite-spell-suggest')
    " Unite plugin that provides command line completition
    call dein#add('joedicastro/unite-cmdmatch')
    " Build by unite interface
    call dein#add('Shougo/unite-build')
"}}} -----------------------------------------------------------------------------------------------

">> Testing <<{{{ ----------------------------------------------------------------------------------
    " extended % matching for HTML, LaTeX, and many other languages
    call dein#add('k-takata/matchit.vim')
    " Vim plugin for copying to the system clipboard with text-objects and motions
    call dein#add('christoomey/vim-system-copy')
    " vim plugin to interact with tmux
    call dein#add('benmills/vimux')
    " Use cscope within vim with vim-unite
    call dein#add('toshi32tony3/vim-unite-cscope')
    " Create temporary file for memo, testing, ...
    call dein#add('Shougo/junkfile.vim')
    " Extended session management for Vim (:mksession on steroids)
    call dein#add('xolox/vim-session')
    " Miscellaneous auto-load Vim scripts
    call dein#add('xolox/vim-misc')
"}}} -----------------------------------------------------------------------------------------------

    " Required:
    call dein#end()

    " Required:
    filetype plugin indent on

    if dein#check_install()
        call dein#install()
    endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unite.vim {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" >> General settings << {{{
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
    call unite#filters#sorter_default#use(['sorter_rank'])
    call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
                \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))

    " Using ag as recursive command.
    let g:unite_source_rec_async_command =
                \ ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']

    " >> Profiles << {{{
        " >> Default << {{{
        let g:default_context = {
            \ 'winheight' : 15,
            \ 'update_time' : 200,
            \ 'truncate_width' : 90,
            \ 'prompt' : '=> ',
            \ 'enable_start_insert' : 0,
            \ 'enable_short_source_names' : 0,
            \ 'marked_icon' : '✓',
            \ 'ignorecase' : 1,
            \ 'smartcase' : 1,
            \ 'direction' : 'botright',
        \ }
        call unite#custom#profile('default', 'context', default_context)
        "}}}
        " >> File << {{{
        let g:file_context = {
            \ 'start_insert' : 1,
            \ 'enable_short_source_names' : 1,
            \ 'buffer_name' : 'files',
            \ 'vertical' : 1,
            \ 'resize' : 0,
            \ 'prompt_direction' : 'below',
        \ }
        call unite#custom#profile('file', 'context', file_context)
        call unite#custom#profile('file', 'converters', ['converter_relative_word'])
        "}}}
    "}}}

    call unite#custom#source('file_rec/async', 'max_candidates', 100)

     "{{{
     function! s:menu_on_syntax(args, context) abort
         " syntax match uniteSource__Menu_sh /\S\{-}$/ contained containedin=uniteSource__Menu
         " highlight default link uniteSource__Menu_sh PreCondit

         syntax match uniteSource__Menu_dots /\.\+/ contained containedin=uniteSource__Menu
         highlight default link uniteSource__Menu_dots Comment

         " syntax match uniteSource__Menu_n /\S\=/ contained containedin=uniteSource__Menu
         " highlight default link uniteSource__Menu_n Keyword

         syntax match uniteSource__Menu_na /.*▶/ contained containedin=uniteSource__Menu
         highlight default link uniteSource__Menu_na Keyword
     endfunction
     "}}}
     call unite#custom#source('menu', 'syntax', 'uniteSource__Menu')
     call unite#custom#source('menu', 'on_syntax', function('s:menu_on_syntax'))

    let g:unite_source_history_yank_enable = 1
    " Don't let unite overwrite the status line.
    let g:unite_force_overwrite_statusline = 0
    " Specify the dir where the unite configs are stored.
    let g:unite_data_directory = '~/.vim/tmp/unite'
    " Set European time format.
    let g:unite_source_buffer_time_format = '(%d-%m-%Y %H:%M:%S) '
    let g:unite_source_file_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
    let g:unite_source_directory_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
"}}}

" >> Menu Menu << {{{ ------------------------------------------------------------------------------
    let g:unite_source_menu_menus = {}

    " menu prefix key (for all Unite menus)
    nnoremap [menu] <Nop>
    nmap <space> [menu]

    " menus menu
    nnoremap <silent>[menu]u :Unite -silent menu<CR>
"}}}

" >> Vim Menu << {{{
    let g:unite_source_menu_menus.vim = {
        \ 'description' :
        \ '          vim .............................................. [space]v',
        \}
    let g:unite_source_menu_menus.vim.command_candidates = [
        \['▶ choose colorscheme ......................................................',
            \'Unite colorscheme -auto-preview'],
        \['▶ mappings ................................................................',
            \'Unite mapping -start-insert'],
        \['▶ edit configuration file (vimrc) .........................................',
            \'edit $MYVIMRC'],
        \['▶ choose filetype .........................................................',
            \'Unite -start-insert filetype'],
        \['▶ vim help ................................................................',
            \'Unite -start-insert help'],
        \['▶ vim commands ............................................................',
            \'Unite -start-insert command'],
        \['▶ vim functions ...........................................................',
            \'Unite -start-insert function'],
        \['▶ vim runtimepath .........................................................',
            \'Unite -start-insert runtimepath'],
        \['▶ vim command output ......................................................',
            \'Unite output'],
        \['▶ unite sources ...........................................................',
            \'Unite source'],
        \['▶ kill process ............................................................',
            \'Unite -default-action=sigkill -start-insert process'],
        \['▶ launch executable (dmenu like) ..........................................',
            \'Unite -start-insert launcher'],
        \]
    nnoremap <silent>[menu]v :Unite menu:vim -silent -start-insert<CR>
" }}}

" >> Files & Dirs Menu << {{{ ----------------------------------------------------------------------
    let g:unite_source_menu_menus.files = {
        \ 'description' :
        \ '        files & dirs ..................................... [space]o',
        \}
    let g:unite_source_menu_menus.files.command_candidates = [
        \['▶ open file ...............................................................',
            \'UniteWithProjectDir -profile-name=file file_rec/async '],
        \['▶ open most recently used files ...........................................',
            \'Unite -profile-name=file file_mru'],
        \['▶ edit new file ...........................................................',
            \'Unite -profile-name=file file/new'],
        \['▶ search directory ........................................................',
            \'Unite -profile-name=file directory_rec/async'],
        \['▶ search recently used directories ........................................',
            \'Unite -profile-name=file directory_mru'],
        \['▶ make new directory ......................................................',
            \'Unite -profile-name=file directory/new'],
        \['▶ change working directory ................................................',
            \'Unite -default-action=lcd -profile-name=file directory'],
        \['▶ display current working directory .......................................',
            \'Unite output:pwd'],
        \['▶ junk files ......................................................... TODO',
            \'Unite junkfile/new junkfile'],
        \['▶ save as root ....................................................... :w!!',
            \'exe "write !sudo tee % >/dev/null"'],
        \['▶ quick save ......................................................... TODO',
            \'normal :w'],
        \['▶ open ranger .................................................... <leader>x',
            \'call RangerChooser()'],
        \]
    nnoremap <silent>[menu]f :Unite -silent -start-insert menu:files<CR>
" }}}

" >> Spelling Menu << {{{
    let g:unite_source_menu_menus.spelling = {
        \ 'description' :
        \ '     spell checking ................................... [space]s',
        \}
    let g:unite_source_menu_menus.spelling.command_candidates = [
        \['▶ spell checking in German ..................................... <leader>sg',
            \'setlocal spell spelllang=de'],
        \['▶ spell checking in English .................................... <leader>se',
            \'setlocal spell spelllang=en'],
        \['▶ turn off spell checking ...................................... <leader>so',
            \'setlocal nospell'],
        \['▶ jumps to next bad spell word and show suggestions ............ <leader>sc',
            \'normal \sc'],
        \['▶ jumps to next bad spell word ................................. <leader>sn',
            \'normal \sn'],
        \['▶ suggestions .................................................. <leader>sp',
            \'normal \sp'],
        \['▶ add word to dictionary ....................................... <leader>sa',
            \'normal \sa'],
    \]
    nnoremap <silent>[menu]s :Unite -silent menu:spelling<CR>
" }}}

" >> Text Menu << {{{
    let g:unite_source_menu_menus.text = {
        \ 'description' :
        \ '         text editing ..................................... [space]e',
        \}
    let g:unite_source_menu_menus.text.command_candidates = [
        \['▶ toggle search results highlight .........................................',
            \'set invhlsearch'],
        \['▶ toggle line numbers                                        ⌘ ,l',
            \'call ToggleRelativeAbsoluteNumber()'],
        \['▶ toggle wrapping                                            ⌘ ,ew',
            \'call ToggleWrap()'],
        \['▶ toggle fold .......................................................... za',
            \'normal za'],
        \['▶ open all folds ....................................................... zR',
            \'normal zR'],
        \['▶ close all folds ...................................................... zM',
            \'normal zM'],
        \['▶ copy to the clipboard                                      ⌘ ,y',
            \'normal ,y'],
        \['▶ paste from the clipboard                                   ⌘ ,p',
            \'normal ,p'],
        \['▶ remove trailing whitespaces                                ⌘ ,et',
            \'normal ,et'],
        \['▶ text statistics                                            ⌘ ,es',
            \'Unite output:normal\ ,es -no-cursor-line'],
        \['▶ show word frequency                                        ⌘ ,ef',
            \'Unite output:WordFrequency'],
        \['▶ show available digraphs',
            \'digraphs'],
        \['▶ insert lorem ipsum text',
            \'exe "Loremipsum" input("numero de palabras: ")'],
        \['▶ show current char info                                     ⌘ ga',
            \'normal ga'],
        \]
    nnoremap <silent>[menu]e :Unite -silent -winheight=20 menu:text <CR>
" }}}

" >> Yanks, Registers & History Menu << {{{
    let g:unite_source_menu_menus.registers = {
        \ 'description' :
        \ '    yanks, registers & history ....................... [space]i',
        \}
    let g:unite_source_menu_menus.registers.command_candidates = [
        \['▶ yanks                                                      ⌘ ,i',
            \'Unite history/yank'],
        \['▶ commands       (history)                                   ⌘ q:',
            \'Unite history/command'],
        \['▶ searches       (history)                                   ⌘ q/',
            \'Unite history/search'],
        \['▶ registers',
            \'Unite register'],
        \['▶ messages',
            \'Unite output:messages'],
        \['▶ undo tree      (gundo)                                     ⌘ nu',
            \'GundoToggle'],
        \]
    nnoremap <silent>[menu]i :Unite -silent menu:registers<CR>
" }}}

" >> Buffer internal searching Menu << {{{
    let g:unite_source_menu_menus.searching = {
        \ 'description' :
        \ '    searches within the current buffer ............... [space]f',
        \}
    let g:unite_source_menu_menus.searching.command_candidates = [
        \['▶ search line                                                ⌘ ,f',
            \'Unite -auto-preview -start-insert line'],
        \['▶ search word under the cursor                               ⌘ [space]8',
            \'UniteWithCursorWord -no-split -auto-preview line'],
        \['▶ search outlines & tags (ctags)                             ⌘ ,t',
            \'Unite -vertical -winwidth=40 -direction=topleft -toggle outline'],
        \['▶ search marks',
            \'Unite -auto-preview mark'],
        \['▶ search folds',
            \'Unite -vertical -winwidth=30 -auto-highlight fold'],
        \['▶ search changes',
            \'Unite change'],
        \['▶ search jumps',
            \'Unite jump'],
        \['▶ search undos',
            \'Unite undo'],
        \['▶ search tasks                                               ⌘ ,;',
            \'Unite -auto-highlight -toggle grep:%::FIXME\\|TODO\\|NOTE\\|XXX\\|COMBAK\\|@todo'],
        \]
    nnoremap <silent>[menu]bs :Unite -silent menu:searching<CR>
" }}}

" >> Buffers, Tabs & Windows Menu << {{{
    let g:unite_source_menu_menus.navigation = {
        \ 'description' :
        \ '   navigate through buffers, tabs & windows ......... [space]b',
        \}
    let g:unite_source_menu_menus.navigation.command_candidates = [
        \['▶ buffers                                                    ⌘ ,b',
            \'Unite buffer'],
        \['▶ tabs                                                       ⌘ ,B',
            \'Unite tab'],
        \['▶ windows',
            \'Unite window'],
        \['▶ location list',
            \'Unite location_list'],
        \['▶ quickfix',
            \'Unite quickfix'],
        \['▶ resize windows                                             ⌘ C-C C-W',
            \'WinResizerStartResize'],
        \['▶ new vertical window                                        ⌘ ,v',
            \'vsplit'],
        \['▶ new horizontal window                                      ⌘ ,h',
            \'split'],
        \['▶ close current window                                       ⌘ ,k',
            \'close'],
        \['▶ toggle quickfix window                                     ⌘ ,q',
            \'normal ,q'],
        \['▶ zoom                                                       ⌘ ,z',
            \'ZoomWinTabToggle'],
        \['▶ delete buffer                                              ⌘ ,K',
            \'bd'],
        \]
    nnoremap <silent>[menu]bb :Unite -silent menu:navigation<CR>
" }}}

" >> NeoBundle administration menu << {{{
    let g:unite_source_menu_menus.neobundle = {
        \ 'description' :
        \ '    plugin administration with neobundle ............. [space]n',
        \}
    let g:unite_source_menu_menus.neobundle.command_candidates = [
        \['▶ neobundle',
            \'Unite neobundle'],
        \['▶ neobundle log',
            \'Unite neobundle/log'],
        \['▶ neobundle lazy',
            \'Unite neobundle/lazy'],
        \['▶ neobundle update',
            \'Unite neobundle/update'],
        \['▶ neobundle search',
            \'Unite neobundle/search'],
        \['▶ neobundle install',
            \'Unite neobundle/install'],
        \['▶ neobundle check',
            \'Unite -no-empty output:NeoBundleCheck'],
        \['▶ neobundle docs',
            \'Unite output:NeoBundleDocs'],
        \['▶ neobundle clean',
            \'NeoBundleClean'],
        \['▶ neobundle rollback',
            \'exe "NeoBundleRollback" input("plugin: ")'],
        \['▶ neobundle list',
            \'Unite output:NeoBundleList'],
        \['▶ neobundle direct edit',
            \'NeoBundleExtraEdit'],
        \]
    nnoremap <silent>[menu]n :Unite -silent -start-insert menu:neobundle<CR>
" }}}

" >> GTI menu << {{{
    let g:unite_source_menu_menus.git = {
        \ 'description' :
        \ '          manage GIT repositories .......................... [space]g',
        \}
    let g:unite_source_menu_menus.git.command_candidates = [
        \['▶ tig                                                        ⌘ ,gt',
            \'normal ,gt'],
        \['▶ git viewer             (gitv)                              ⌘ ,gv',
            \'normal ,gv'],
        \['▶ git viewer - buffer    (gitv)                              ⌘ ,gV',
            \'normal ,gV'],
        \['▶ git status             (fugitive)                          ⌘ ,gs',
            \'Gstatus'],
        \['▶ git diff               (fugitive)                          ⌘ ,gd',
            \'Gdiff'],
        \['▶ git commit             (fugitive)                          ⌘ ,gc',
            \'Gcommit'],
        \['▶ git log                (fugitive)                          ⌘ ,gl',
            \'exe "silent Glog | Unite -no-quit quickfix"'],
        \['▶ git log - all          (fugitive)                          ⌘ ,gL',
            \'exe "silent Glog -all | Unite -no-quit quickfix"'],
        \['▶ git blame              (fugitive)                          ⌘ ,gb',
            \'Gblame'],
        \['▶ git add/stage          (fugitive)                          ⌘ ,gw',
            \'Gwrite'],
        \['▶ git checkout           (fugitive)                          ⌘ ,go',
            \'Gread'],
        \['▶ git rm                 (fugitive)                          ⌘ ,gR',
            \'Gremove'],
        \['▶ git mv                 (fugitive)                          ⌘ ,gm',
            \'exe "Gmove " input("destino: ")'],
        \['▶ git push               (fugitive, buffer output)           ⌘ ,gp',
            \'Git! push'],
        \['▶ git pull               (fugitive, buffer output)           ⌘ ,gP',
            \'Git! pull'],
        \['▶ git command            (fugitive, buffer output)           ⌘ ,gi',
            \'exe "Git! " input("comando git: ")'],
        \['▶ git edit               (fugitive)                          ⌘ ,gE',
            \'exe "command Gedit " input(":Gedit ")'],
        \['▶ git grep               (fugitive)                          ⌘ ,gg',
            \'exe "silent Ggrep -i ".input("Pattern: ") | Unite -no-quit quickfix'],
        \['▶ git grep - messages    (fugitive)                          ⌘ ,ggm',
            \'exe "silent Glog --grep=".input("Pattern: ")." | Unite -no-quit quickfix"'],
        \['▶ git grep - text        (fugitive)                          ⌘ ,ggt',
            \'exe "silent Glog -S".input("Pattern: ")." | Unite -no-quit quickfix"'],
        \['▶ git init                                                   ⌘ ,gn',
            \'Unite output:echo\ system("git\ init")'],
        \['▶ git cd                 (fugitive)',
            \'Gcd'],
        \['▶ git lcd                (fugitive)',
            \'Glcd'],
        \['▶ git browse             (fugitive)                          ⌘ ,gB',
            \'Gbrowse'],
        \]
    nnoremap <silent>[menu]g :Unite -silent -winheight=29 -start-insert menu:git<CR>
" }}}

" >> Programming menu << {{{
    let g:unite_source_menu_menus.programming = {
        \ 'description' :
        \ '  programming tools ................................ [space]p',
        \}
    let g:unite_source_menu_menus.programming.command_candidates = [
        \['▶ command prompt to run in a tmux panel      (vimux)         ⌘ ,rc',
            \'VimuxPromptCommand'],
        \['▶ repeat last command                        (vimux)         ⌘ ,rl',
            \'VimuxRunLastCommand'],
        \['▶ stop command execution in tmux panel       (vimux)         ⌘ ,rs',
            \'VimuxInterruptRunner'],
        \['▶ inspect tmux panel                         (vimux)         ⌘ ,ri',
            \'VimuxInspectRunner'],
        \['▶ close tmux panel                           (vimux)         ⌘ ,rq',
            \'VimuxCloseRunner'],
        \['▶ go to definition                           (pymode-rope)   ⌘ C-C g',
            \'call pymode#rope#goto_definition()'],
        \['▶ find where a function is used              (pymode-rope)   ⌘ C-C f',
            \'call pymode#rope#find_it()'],
        \['▶ syntastic toggle                           (syntastic)',
            \'SyntasticToggleMode'],
        \['▶ syntastic check & errors                   (syntastic)     ⌘ ,N',
            \'normal ,N'],
        \]
    nnoremap <silent>[menu]p :Unite -silent -winheight=42 menu:programming<CR>
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug-in settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" >> UltiSnips << {{{
    let g:UltiSnipsExpandTrigger="<C-TAB>"

    " If you prefer the Omni-Completion tip window to close when a selection is
    " made, these lines close it on movement in insert mode or when leaving
    " insert mode
    "autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"}}}

" >> NERDTree << {{{
    let NERDTreeChDirMode = 1
"}}}

" >> vim-airline << {{{
    " Always show the statusline
    set laststatus=2
    " Necessary to show Unicode glyphs
    set encoding=utf-8
    " Use Powerline fonts with unicode glyphes
    set  guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
    let g:airline_powerline_fonts = 1
    " Rename special buffers
    let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
    let g:airline#extensions#quickfix#location_text = 'Location'
    " Shwow full tag name
    let g:airline#extensions#tagbar#flags = 'f'
    " disable ailine in preview window
    let g:airline_exclude_preview = 1
    " display tabline in airline style
    let g:airline#extensions#tabline#enabled = 1
    " don't display buffers in tabline
    let g:airline#extensions#tabline#show_buffers = 0
    " display tabline iff more than one tab is opend
    let g:airline#extensions#tabline#tab_min_count = 2
"}}}

" >> Vim Lexical << {{{
    filetype plugin indent on
    let g:lexical#spell = 1
    let g:lexical#spelllang = ['en','de',]
    let g:lexical#dictionary = ['/usr/share/dict/british-english',
                  \ '/usr/share/dict/american-english',
                  \ '/usr/share/dict/ngerman',]
    let g:lexical#dictionary_key = '<leader>u'
    augroup lexical
    autocmd!
    autocmd FileType * call lexical#init()
    augroup END
"}}}

" >> YouCompleteMe << {{{
    " keys to move down through completion list
    let g:ycm_key_list_select_completion = ['<TAB>']
    " keys to move up through completion list
    let g:ycm_key_list_previous_completion = ['<S-TAB>']
    " switchoff confirmation of loading .ycm_extra_conf.py
    let g:ycm_confirm_extra_conf = 0
    " enable completion in all filetypes
    let g:ycm_filetype_blacklist = {}
    " enable completion within comments
    let g:ycm_complete_in_comments = 1
    " get completion out of tag files
    let g:ycm_collect_identifiers_from_tags_files = 1
    " completer will seed database with  keywords of the programming language
    let g:ycm_seed_identifiers_with_syntax = 1
    let g:ycm_extra_conf_globlist = ['~/.vim/.ycm_extra_conf.py']
    " pass filetype to FlagsForFile function
    let g:ycm_extra_conf_vim_data = ['&filetype']
    "let g:ycm_show_diagnostics_ui = 0
"}}}

" >> TagBar << {{{
    "augroup TagbarAucmd
    "autocmd!
    "autocmd BufreadPost *{nerdtree}\@<! :call tagbar#autoopen(0)
    ""autocmd FileType *{nerdtree}\@<! :call tagbar#autoopen(0)
    "" leave tagbar if switching tabs
    "autocmd TabLeave * if bufname("%") == '__Tagbar__' | :1wincmd w | endif
    "augroup end

    let g:tagbar_width = 30
    let g:tagbar_autopreview = 1
    let g:tagbar_autoclose = 1
    let g:tagbar_autofocus = 1
    let g:tagbar_previewwin_pos = "rightbelow"
    let g:tagbar_zoomwidth = 0
    let g:tagbar_autoshowtag = 0
    let g:tagbar_indent = 1
    let g:tagbar_type_tex = {
        \ 'ctagstype' : 'latex',
        \ 'kinds'     : [
        \ 'p:part',
        \ 'c:chapter:1:0',
        \ 's:sections:1:1',
        \ 'ss:subsections:1:1',
        \ 'g:graphics:0:0',
        \ 'l:labels',
        \ 'r:refs:1:0',
        \ 'p:pagerefs:1:0'
        \ ],
        \ 'sort' : 0,
    \ }
"}}}

" >> Syntastic << {{{
    " don't use signs for errors
    let g:syntastic_enable_signs = 0
    let g:syntastic_enable_highlighting = 1
    " 
    let g:syntastic_cpp_checkers=[ "clang_check", "cppcheck" ]
    let g:syntastic_c_checkers=[ "clang_check", "cppcheck" ]
    " link hl groups to color scheme ones
    highlight link SyntasticWarning VisualNOS
    highlight link SyntasticError Error
    highlight link SyntasticErrorLine SyntasticError
    highlight link SyntasticWarningLine SyntasticWarning

    " TODO check movint through errors
    let g:syntastic_always_populate_loc_list = 1
    "let g:syntastic_auto_loc_list = 1
    " run multiple checkers and combine results
    let g:syntastic_aggregate_errors = 1
"}}}

" >> vim-easymotion << {{{
    map <Leader> <Plug>(easymotion-prefix)
    " ignore case
    let g:EasyMotion_smartcase = 1
    " ignore 2nd allocation for us layout
    let g:EasyMotion_use_smartsign_us = 1
    " more letters according to qwerty
    let g:EasyMotion_keys = 'asdfghjkl;qwertyuiopzxcvbnm'
    " switch off default mapping
    let g:EasyMotion_do_mapping = 0
"}}}

" >> ack.vim << {{{
    if executable('ag')
        let g:ackprg = 'ag --vimgrep'
    endif
    let g:ackhighlight = 1
    let g:ack_autofold_results = 1
    let g:ackpreview = 1
"}}}

" >> vim-signify << {{{
    " only use for GIT
    "let g:signify_vcs_list = [ 'git' ]
    " mod change sign
    let g:signify_sign_change = '~'
    let g:signify_sign_delete = '-'
    " modify sign highlighting
    hi SignifySignAdd ctermfg=2 ctermbg=233 guifg=#009900 guibg=#1c1b1a
    hi SignifySignChange ctermfg=3 ctermbg=233 guifg=#bbbb00 guibg=#1c1b1a
    hi SignifySignDelete ctermfg=1 ctermbg=233 guifg=#ff2222 guibg=#1c1b1a
    " other options
    let g:signify_disable_by_default = 0
    " Hunk text object:
    omap ic <plug>(signify-motion-inner-pending)
    xmap ic <plug>(signify-motion-inner-visual)
    omap ac <plug>(signify-motion-outer-pending)
    xmap ac <plug>(signify-motion-outer-visual)
"}}}

" >> Unite.vim << {{{
    " Setup Unite for buffers
    nnoremap <space>b :Unite
                \ -direction=dynamicbottom
                \ -prompt-direction=below
                \ -buffer-name=buffers
                \ buffer tab:no-current<cr>
    " Setup Unite for GNU global tags
    "let g:unite_source_gtags_project_config = {'_':{ 'treelize': 1 }}
    nnoremap <space>c :Unite
                \ -auto-highlight
                \ -auto-preview
                \ -vertical
                \ -previewheight=60
                \ -winwidth=110
                \ gtags/context <cr>
    " Setup Unite for outline view
    let g:unite_source_outline_highlight = {
          \ 'comment' : 'Comment',
          \ 'expanded': 'Constant',
          \ 'function': 'Function',
          \ 'id'      : 'Special',
          \ 'macro'   : 'Macro',
          \ 'method'  : 'Function',
          \ 'normal'  : 'Normal',
          \ 'package' : 'Normal',
          \ 'special' : 'Macro',
          \ 'type'    : 'Type',
          \ 'level_1' : 'Type',
          \ 'level_2' : 'PreProc',
          \ 'level_3' : 'Identifier',
          \ 'level_4' : 'Constant',
          \ 'level_5' : 'Special',
          \ 'level_6' : 'Normal',
          \ 'parameter_list': 'Normal',
          \ }
    nnoremap <space>o :Unite
                \-vertical
                \ -auto-highlight
                \ outline <cr>
"}}}

" >> Gundo << {{{
    " Previev underneath the current window
    let g:gundo_preview_bottom=1
    " Gundo on the right side
    let g:gundo_right=1
    " Close Gundo when reverted
    let g:gundo_close_on_revert=1
    " Set low delay during scrolling
    let g:gundo_playback_delay=0
"}}}

" >> vim-session << {{{
    " save the session automatically
    let g:session_autosave ='yes'
    " autosave interval in minutes
    let g:session_autosave_periodic = 1
    " do the autosave silently
    let g:session_autosave_silent = 1
    " don't do autoload of sessions
    let g:session_autoload = 'no'
    " the location of session scripts
    let g:session_directory = "~/.local/share/nvim/sessions"
    "
"}}}

" >> startify << {{{
    " set startify session dir
    let g:startify_session_dir = g:session_directory
    " set cwd to VCS dir of file
    let g:startify_change_to_vcs_root = 1
"}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " tell it to use an undo file
    set undofile
    " backup current file
    set backup
    set backupdir=~/.local/share/nvim/backup
    " Don't use .swp files
    set noswapfile
    " enable modeline
    set modeline
    " enable SmartCase
    set smartcase
    " enable hidden buffers
    set hidden
    " open vsplit on the righ
    set splitright
    " lines above & below the cursor
    set scrolloff=5

" >> NeoVim Settings << {{{
    " map ESC to exit insert mode in terminal
    if exists(':tnoremap')
        tnoremap <Esc> <C-\><C-n>
    endif
    " start insert mode if terminal win is entered
    autocmd BufWinEnter,WinEnter term://* startinsert
"}}}

" >> GUI settings << {{{
    " use 256 colors
    set t_Co=256
    " select colorscheme
    colorscheme badwolf
    " Always show the statusline
    set laststatus=2
    " show linenumbers
    set number
    " always show tabline
    set showtabline=1
    " switch on cmd completion menu
    set wildmenu
    " relative linenumbering
    set relativenumber
"}}}

" >> Highlighting << {{{
    " swich-on syntax highlighting
    syntax on
    " highlight current cursor line
    set cursorline
    " highlight specific column
    set colorcolumn=100
    " highlight unwanted spaces
    set list
    set lcs=tab:░░,trail:█
    " customize highlighting in diff mode
    hi DiffAdd cterm=none ctermfg=fg ctermbg=70 gui=none guifg=fg guibg=#87af00
    hi DiffDelete cterm=none ctermfg=fg ctermbg=124 gui=none guifg=fg guibg=#af0000
    hi DiffChange cterm=none ctermfg=bg ctermbg=227 gui=none guifg=bg guibg=#ffff5f
    hi DiffText cterm=none ctermfg=fg ctermbg=208 gui=none guifg=fg guibg=#ff8700
"}}}

" >> Folding << {{{
    " foldmethod
    set fdm=syntax
    " automatically open folds only for special reasons
    set foldopen=search,insert,tag,undo,quickfix
    " do not automatically close folds
    set foldclose=
    " width of fold column
    set fdc=2
    " Don't screw up folds when inserting text that might affect them, until
    " leaving insert mode. Foldmethod is local to the window. Protect against
    " screwing up folding when switching between windows.
    autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
    autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif
"}}}

" >> View & Session stuff << {{{
    " automatically safe folds
    augroup AutoViews
        autocmd!
        " autocmd BufWinLeave *.* mkview!
        " autocmd BufWinEnter *.* silent loadview | :AirlineRefresh
        " TODO
        autocmd BufWritePost *
        \   if expand('%') != '' && &buftype !~ 'nofile'
        \|      mkview!
        \|  endif
        autocmd BufRead *
        \   if expand('%') != '' && &buftype !~ 'nofile'
        \|      silent! loadview
        \|  endif
    augroup END
    " don't store window local options
    set viewoptions-=options
"}}}

" >> Tabstop & indentions << {{{
    " columns used per <TAB>
    set tabstop=4
    " columns for indention with << & >>
    set shiftwidth=4
    " keep indention from previous line
    set autoindent
    " insert extra level of indention if needed
    set smartindent
    " On pressing tab, insert 4 spaces
    set expandtab
"}}}

" >> File settings << {{{
    " encoding stuff
    if has("multi_byte")
        if &termencoding == ""
            let &termencoding = &encoding
        endif
        set encoding=utf-8
        setglobal fileencoding=utf-8
        set fileencodings=utf-8,latin1
    endif
"}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" >> Basic stuff << {{{

    " ESC in insert mode
    inoremap <Esc> <NOP>
    inoremap jj <Esc>
    " " ESC in command mode
    " cnoremap <Esc> <NOP>
    " cnoremap jj <Esc>
    " remap <leader>
    let mapleader = ","
    " disable ex mode & execute macros better
    nnoremap @ <NOP>
    nnoremap Q @
"}}}

" >> Disabling arrow keys << {{{
    " disable Arrow in insert mode
    ino <UP>    <Nop>
    ino <RIGHt> <Nop>
    ino <LEFT>  <Nop>
    ino <DOWN>  <Nop>

    " disable Arrow in visual mode
    vno <UP>    <Nop>
    vno <RIGHt> <Nop>
    vno <LEFT>  <Nop>
    vno <DOWN>  <Nop>

    " disable Arrow in normal mode
    nno <UP>    <Nop>
    nno <RIGHt> <Nop>
    nno <LEFT>  <Nop>
    nno <DOWN>  <Nop>
"}}}

" >> F-Button remapping << {{{
    " toggle hlsearch
    nnoremap <F5> :set hlsearch! hlsearch?<CR>
    " do beautification
    nnoremap <F6> mm :w <CR> :call Uncrustify() <CR> :w <CR> `m zz
    " toggle Spell checking
    nnoremap <F7> :set spell! spell?<CR>

    " Toggle NERDTree
    nnoremap <F9> :ToggleNERDTree <CR>
    " Toggle Taglist
    nnoremap <F10> :TagbarToggle <CR>
    " Toggle extra tab for compilaion
    noremap <F11> :call ToggleBuildTab() <CR>
    " Toggle debug windows
    "noremap <silent> <F12> :call ToggleDebugWin() <CR>
"}}}

" >> Pyclewn mappings << {{{
    "function ToggleMappingsPyclewn(status)
    "if a:status == 'off'
        "" somwhow toggle breakpoints
        "noremap <silent>  <Leader><Leader>b :exe "Cbreak " . expand("%:p") . ":" . line(".") <CR>
        "" del needs br num
        "noremap <silent>  <Leader><Leader>d :exe "Cdelete " <CR>
        "noremap <silent>  <Leader><Leader>r :exe "Crun" <CR>
        "noremap <silent>  <Leader><Leader>q :exe "Cquit" <CR>
        "noremap <silent>  <Leader><Leader>c :exe "Ccontinue" <CR>
        "noremap <silent>  <Leader><Leader>n :exe "Cnext" <CR>
        "noremap <silent>  <Leader><Leader>s :exe "Cstep" <CR>
        "noremap <silent>  <Leader><Leader>p :exe "Cprint " . expand("<cword>") <CR>
        "noremap <silent>  <Leader><Leader>P :exe "Cprint *" . expand("<cword>") <CR>
    "else
        "unmap <silent>  <Leader><Leader>b
        "unmap <silent>  <Leader><Leader>d
        "unmap <silent>  <Leader><Leader>r
        "unmap <silent>  <Leader><Leader>q
        "unmap <silent>  <Leader><Leader>c
        "unmap <silent>  <Leader><Leader>n
        "unmap <silent>  <Leader><Leader>s
        "unmap <silent>  <Leader><Leader>p
        "unmap <silent>  <Leader><Leader>P
    "endif
    "endfunction
"}}}

" >> EasyMotion mappings << {{{
    map <Leader> <Plug>(easymotion-prefix)
    " *-bd-*    ... both directions at once
    " *-tn/*-fn ... search n chars
    map <Plug>(easymotion-prefix).  <Plug>(easymotion-repeat)

    map <Plug>(easymotion-prefix)w  <Plug>(easymotion-bd-w)
    map <Plug>(easymotion-prefix)W  <Plug>(easymotion-bd-W)
    map <Plug>(easymotion-prefix)e  <Plug>(easymotion-bd-e)
    map <Plug>(easymotion-prefix)E  <Plug>(easymotion-bd-E)

    map <Plug>(easymotion-prefix)t  <Plug>(easymotion-bd-tn)
    map <Plug>(easymotion-prefix)f  <Plug>(easymotion-bd-fn)

    map <Plug>(easymotion-prefix)l  <Plug>(easymotion-bd-jk)
    map <Plug>(easymotion-prefix)L  <Plug>(easymotion-eol-bd-jk)
    map <Plug>(easymotion-prefix)n  <Plug>(easymotion-bd-n)

    map <Plug>(easymotion-prefix)a  <Plug>(easymotion-jumptoanywhere)
    "\       '(<.|^$)' . '|' .
    "\       '(.>|^$)' . '|' .
    let g:EasyMotion_re_anywhere = '\v' .
    \       '(\l)\zs(\u)' . '|' .
    \       '(_\zs.)' . '|' .
    \       '(#\zs.)'
"}}}

" >> Spelling << {{{
    " turn on the spell checking and set the German language
    nmap <Leader>sg :setlocal spell spelllang=de<CR>
    " turn on the spell checking and set the English language
    nmap <Leader>se :setlocal spell spelllang=en<CR>
    " turn off the spell checking
    nmap <Leader>so :setlocal nospell <CR>
    " jump to the next bad spell word
    nmap <Leader>sn ]s
    " suggest words
    nmap <Leader>sp :Unite spell_suggest<CR>
    " jump to the next bad spell word and suggests a correct one
    nmap <Leader>sc ]s :Unite spell_suggest<CR>
    " add word to the dictionary
    nmap <Leader>sa zg
" }}}

" >> Save as root << {{{
    cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim script functions {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" >> Code beautification << {{{
    function! Uncrustify()
    let cmd = '%!uncrustify -q -c '

    let cfg = g:ProjectRoot
    let cfg .= '/uncrustify.cfg'

    if exists("cfg") && filereadable(cfg)
        let cmd .= cfg
    else
        let cmd .= '~/.uncrustify.cfg'
    endif
    let cmd .= ' -f %'

    execute cmd
    endfunction
"}}}

" >> Windows for debugging << {{{
    "let s:debugWin = 'off'
    "function! ToggleDebugWin()
    "call ToggleMappingsPyclewn(s:debugWin)
    "let l:curr_buffer = winbufnr(1)
    "if s:debugWin == 'off'
        "ShowMarksOn
        "ShowMarksToggle

        "silent :Pyclewn gdb
        "silent :exec "Cfile " . g:Executable
        "silent sleep 2

        "tabfirst
        "1wincmd w
        "exec "buffer " . l:curr_buffer

        "let s:debugWin = "on"
    "else
        "tabclose 1
        "nbclose
        "ShowMarksOn

        "let s:debugWin = "off"
    "endif
    "endfunction

    "" Create the clewn buffers windows in a tab page.
    "function Pyclewn_CreateTabWindows(debugger)
    "tabm 0

    "vsplit
    "wincmd l
    "view (clewn)_console
    "setlocal scrolloff=8

    "augroup Pyclewn_Debug
        "autocmd!
        "autocmd WinEnter <buffer> $
    "augroup END

        "split
        "wincmd w
        "view (clewn)_threads
        "split
        "view (clewn)_breakpoints
        "split
        "view (clewn)_backtrace

        "" Resize the windows to have the 'breakpoints' and 'threads' windows
        "" with a height of 8 and 4.
        "2wincmd j
        "resize 4
        "wincmd k
        "let l:breakpoints_height = winheight(0)
        "wincmd k
        "let l:backtrace_height = winheight(0) + l:breakpoints_height - 8
        "if l:backtrace_height > 0
        "exe "resize " . l:backtrace_height
        "endif
    "endif

    "2wincmd w

    "windo setlocal fdc=0
    "windo setlocal nu!
    "windo setlocal buftype=nofile
    "windo setlocal bufhidden=hide
    "windo setlocal nobuflisted
    "endfunction

    "" opens file in left window when hitting a breakpoint in it's window
    "function Pyclewn_GotoBreakpoint(fname, lnum)
    "exe "1wincmd w"
    "exe "edit " . a:fname
    "if a:lnum != ""
        "call cursor(a:lnum, 0)
    "endif
    "endfunction

    "" opens file in left window when hitting a backtrace frame in it's window
    "function Pyclewn_GotoFrame(fname)
     "call Pyclewn_GotoBreakpoint(a:fname, 0)
    "endfunction
""}}}

" >> A Tab for compiling stuff << {{{
    "let s:buildTab = 'off'
    "function! ToggleBuildTab()
    "if s:buildTab == 'off'
        ":tabnew | :tabm 0  | :copen
        "if exists("g:BuildDir")
        "exec "cd " . g:BuildDir
        "endif
        "let s:buildTab = 'on'
    "else
        ":tabclose 1
        "let s:buildTab = 'off'
    "endif
    "endfunction
"}}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim devels corner {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" >> A Tab for searching the project for stuff << {{{
    let s:grepTab = 'off'
    function! ToggleGrepTab()
    if s:grepTab == 'off'
        :tabnew | :tabm 0  | :copen
        if exists("g:BuildDir")
        exec "cd " . g:BuildDir
        endif
        let s:grepTab = 'on'
    else
        :tabclose 1
        let s:grepTab = 'off'
    endif
    endfunction
"}}}

"{{{
    "function Test() range
      "let result = system('echo '.shellescape(join(getline(a:firstline, a:lastline), "\\n")).'| uncrustify -s  -c ~/.uncrustify.cfg -l cpp  --frag 2> /dev/null')
      "echo result
      "let lst = split( result, '\n',1)
      "call append(line('.')-1, lst)
      ":'<,'>d
    "endfunction
"}}}

" open file with ranger
fun! RangerChooser()
    exec "silent !ranger --choosefile=/tmp/chosenfile " . expand("%:p:h")
    if filereadable('/tmp/chosenfile')
        exec 'edit ' . system('cat /tmp/chosenfile')
        call system('rm /tmp/chosenfile')
    endif
    redraw!
endfun
map <Leader>x :call RangerChooser()<CR>

" automatically source vimrc
augroup FileTypeVim
    autocmd!
    " Source your vimrc on save
    autocmd! BufWritePost .vimrc source %
    " Apply modeline option after re-openning the vimrc file (that is after sourcing it)
    autocmd! BufWritePost .vimrc set modeline | doautocmd BufRead
augroup END

" get svn commit message from last git commit
augroup Git2Svn
    autocmd!
    autocmd VimEnter * if @% == 'svn-commit.tmp' | :execute ':0 | :read !git log -1 --pretty=\%B' | :execute ':0 | :delete' | endif
augroup END

" open help vertically on the right
augroup HelpFiles
    autocmd!
    autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

" automatically refresh Airline
" augroup Airline
"     autocmd!
"     autocmd WinEnter * :AirlineRefresh
" augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" >> Modeline << {{{
    " vim: fdm=marker
"}}}
