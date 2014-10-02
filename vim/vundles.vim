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
" Lean & mean status/tabline for vim that's light as air.
"
Plugin 'bling/vim-airline'

"
" Additional vim c++ syntax highlighting
"
Plugin 'octol/vim-cpp-enhanced-highlight'

"
" matchit.vim
"
Plugin 'matchit.zip'


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
