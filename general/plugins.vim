
filetype plugin on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  AUTOcmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    " themes
    Plug 'tomasiser/vim-code-dark'
    Plug 'chriskempson/base16-vim'
    Plug 'cormacrelf/vim-colors-github'
    Plug 'arcticicestudio/nord-vim'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'mkitt/tabline.vim'

    Plug 'ryanoasis/vim-devicons'
    Plug 'vwxyutarooo/nerdtree-devicons-syntax'

    " general workflow 
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-obsession'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/goyo.vim'
    Plug 'chaoren/vim-wordmotion'
    Plug 'djoshea/vim-autoread'
    Plug 'machakann/vim-highlightedyank'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'vifm/vifm.vim'
    Plug 'gcmt/taboo.vim'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'reedes/vim-pencil'
    Plug 'mhinz/vim-startify'
    Plug 'karb94/neoscroll.nvim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
    Plug 'mileszs/ack.vim'
 
    " file management
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'airblade/vim-rooter'
    Plug 'preservim/nerdtree'
    Plug 'mbbill/undotree'

    " LSP
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Language
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'kdheepak/lazygit.nvim'

    " language
    Plug 'pangloss/vim-javascript'    " JavaScript support
    Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
    Plug 'HerringtonDarkholme/yats.vim'

    " formater
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }

 call plug#end()
