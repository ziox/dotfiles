" ============================================================================
" Vim plugin configuration
" ============================================================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" ============= Bundles ======================================================

"
" Solarized ColorScheme for Vim
" Developed by Ethan Schoonover es@ethanschoonover.com
"
Plugin 'altercation/vim-colors-solarized'

"
" Bad Wolf
" A color scheme for Vim, pieced together by Steve Losh.
"
Plugin 'sjl/badwolf'

"
" ctrlp.vim
" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"
Plugin 'kien/ctrlp.vim'

"
" Lean & mean status/tabline for vim that's light as air.
"
Plugin 'bling/vim-airline'

"
" A collection of language packs for Vim.
"
Plugin 'sheerun/vim-polyglot'

"
" A fast, as-you-type, fuzzy-search code completion engine for Vim
"
Plugin 'Valloric/YouCompleteMe'

"
" matchit.vim
"
Plugin 'matchit.zip'

"
" Ag!
"
Plugin 'rking/ag.vim'

"
" fugitive.vim may very well be the best Git wrapper of all time
"
Plugin 'tpope/vim-fugitive'


" ============================================================================

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
