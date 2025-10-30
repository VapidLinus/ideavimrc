" .ideavimrc - Configuration file for IdeaVim plugin
" This file uses the same commands as the original .vimrc configuration.
" For a list of available commands, visit: https://jb.gg/h38q75
" For more examples, see: https://jb.gg/share-ideavimrc

source ~/.intellimacs/spacemacs.vim

" (Optional) Enable other Intellimacs modules
source ~/.intellimacs/extra.vim
source ~/.intellimacs/major.vim
" source ~/.intellimacs/hybrid.vim

" Enable which-key plugin
source ~/.intellimacs/which-key.vim

" å for major mode
nmap å <leader>m
vmap å <leader>m

"" Intellimacs Overrides
let g:WhichKeyDesc_Files_IDE_EditIdeaVimRc = "<leader>fer edit-ideavimrc"
nnoremap <leader>fer    :e ~/ideavimrc/.vimrc<CR>
vnoremap <leader>fer    <Esc>:e ~/ideavimrc/.vimrc<CR>

let g:WhichKeyDesc_Files_IDE_ReloadIdeaVimRc = "<leader>feR reload-ideavimrc"
nnoremap <leader>feR    :action IdeaVim.ReloadVimRc.reload<CR>
vnoremap <leader>feR    <Esc>:action IdeaVim.ReloadVimRc.reload<CR>

" Split window right
let g:WhichKeyDesc_Windows_SplitWindowRightV = "<leader>wv move-window-right"
nnoremap <leader>wv    :action MoveTabRight<CR>
vnoremap <leader>wv    <Esc>:action MoveTabRight<CR>

" Split window below
let g:WhichKeyDesc_Windows_SplitWindowBelowS = "<leader>ws move-window-below"
nnoremap <leader>ws    :action MoveTabDown<CR>
vnoremap <leader>ws    <Esc>:action MoveTabDown<CR>

"" Intellimacs New
noremap <leader>pn    :action ShowNavBar<CR>

"" General Settings
" Show a few lines of context around the cursor
set scrolloff=10

" Use standard system clipboard for all operations
set clipboard=ideaput

" Enable relative line numbers
set number relativenumber

" Custom language mapping for special characters
nnoremap Å \
inoremap <C-å> Esc
inoremap ö <Esc>
vnoremap ö <Esc>
cnoremap ö <Esc>
nnoremap Ö :
inoremap Ö <Esc> :
vnoremap Ö :
" nnoremap gq :action QuickImplementations<CR>

" Map the leader key to do nothing on its own
" nnoremap <leader> <Nop>
" vnoremap <leader> <Nop>

" Easier binds for umping to start and end of line
" nnoremap <leader>h ^
" vnoremap <leader>h ^
" onoremap <leader>h ^

" Map Space + l to go to end of line
" nnoremap <leader>l $
" vnoremap <leader>l $
" onoremap <leader>l $

nnoremap gh ^
vnoremap gh ^
nnoremap gl $
vnoremap gl $

" make marks easier to use
nnoremap ' `
nnoremap ` '
vnoremap ' `
vnoremap ` '
nnoremap mm :action ToggleBookmark<CR>
vnoremap mm :action ToggleBookmark<CR>

" Map Space + y to yank to system clipboard
nnoremap <leader>Y "*y
vnoremap <leader>Y "*y

" Map Space + p to paste from system clipboard
nnoremap <leader>P "*p
vnoremap <leader>P "*p

" Map Space + A to open IntelliJ's action menu
" nnoremap <leader>a :action GotoAction<CR>
" vnoremap <leader>a :action GotoAction<CR>

"" Spacemacs-like keybindings

" Map Space + fs to save file
" nnoremap <leader>fs :w<CR>

" Window management
" nnoremap <leader>wv :vsplit<CR>
" nnoremap <leader>ws :split<CR>
" nnoremap <leader>wc :close<CR>
" nnoremap <leader>wm :action MoveEditorToOppositeTabGroup<CR>
" nnoremap <leader>wr :action MoveTabRight<CR>
" nnoremap <leader>wd :action MoveTabDown<CR>
" nnoremap <leader>wp :action PinActiveTab<CR>

" Window navigation
" nnoremap <leader>wh <C-w>h
" nnoremap <leader>wj <C-w>j
" nnoremap <leader>wk <C-w>k
" nnoremap <leader>wl <C-w>l
nnoremap <leader>1 :action GoToTab1<CR>
nnoremap <leader>2 :action GoToTab2<CR>
nnoremap <leader>3 :action GoToTab3<CR>
nnoremap <leader>4 :action GoToTab4<CR>
nnoremap <leader>5 :action GoToTab5<CR>
nnoremap <leader>6 :action GoToTab6<CR>
nnoremap <leader>7 :action GoToTab7<CR>
nnoremap <leader>8 :action GoToTab8<CR>
nnoremap <leader>9 :action GoToTab9<CR>
nnoremap <leader>0 :action GoToTab10<CR>

" Next and previous tab navigation
" nnoremap <leader>bn :action NextTab<CR>
" nnoremap <leader>bp :action PreviousTab<CR>

" IntelliJ search and navigation actions, respectively:
" - (Ctrl-F) 
" - (Ctrl-R) 
" - (F12) 
" - (Shift-Shift) 
" - (Ctrl-N) 
" - (Ctrl-Shift-N) 
" - (Ctrl-Shift-Alt-N) 
" - (Ctrl-Alt-Shift-E) 
" - (Ctrl-Shift-F) 
" - (Ctrl-Shift-R)
" nnoremap <leader>/ :action Find<CR>
" nnoremap <leader>r :action Replace<CR>
" nnoremap <leader>gs :action FileStructurePopup<CR>
" nnoremap <leader>ss :action SearchEverywhere<CR>
" nnoremap <leader>sc :action GotoClass<CR>
" nnoremap <leader>sf :action GotoFile<CR>
" nnoremap <leader>sS :action GotoSymbol<CR>
" nnoremap <leader>st :action TextSearchAction<CR>
" nnoremap <leader>sF :action FindInPath<CR>
" nnoremap <leader>sR :action ReplaceInPath<CR>

" More navigation actions, respectively:
" Select File in Project hierarchy (Alt-F1, 1)
" Select in file Explorer (Alt-F1, 9)
" [V]iew [I]n [F]ile Structure / [E], I guess :shrug:
nnoremap <leader>vif :action SelectInProjectView<CR>
nnoremap <leader>vie :action RevealIn<CR>
nnoremap <leader>vi :action SelectIn<CR>

"" Key Mappings
" Use Q for formatting instead of Ex mode
" map Q gq

" Map gh to show quick documentation
" map gH <Action>(QuickJavaDoc)
" map gr <Action>(ShowUsages)
" map gR <Action>(FindUsages)

" Set handler for Ctrl+W in normal mode to Vim, in insert and visual modes to IDE
sethandler <C-w> n:vim i-v:ide

"" Plugins
" Enable IdeaVim plugins (https://jb.gg/ideavim-plugins)
" Highlight copied text
Plug 'machakann/vim-highlightedyank'

" Commentary plugin for easy commenting
Plug 'tpope/vim-commentary'

" Normally the { and } motions only match completely empty lines. With this plugin lines that only contain whitespace are also matched.
set vim-paragraph-motion

" Highlights unique characters in each word when using f/F/t/T.
let g:qs_secondary_color = '#826CEB'
set quickscope
