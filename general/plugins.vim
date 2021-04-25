
filetype plugin on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  AUTOcmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    " appearence
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'cormacrelf/vim-colors-github'
    Plug 'lewis6991/github_dark.nvim'
    Plug 'metalelf0/jellybeans-nvim'
    Plug 'rktjmp/lush.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'

    " file management
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'airblade/vim-rooter'
    Plug 'mbbill/undotree'

    " general workflow 
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-obsession'
    Plug 'tpope/vim-surround'
    Plug 'chaoren/vim-wordmotion'
    Plug 'djoshea/vim-autoread'
    Plug 'machakann/vim-highlightedyank'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'reedes/vim-pencil'
    Plug 'mhinz/vim-startify'
    Plug 'karb94/neoscroll.nvim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
    Plug 'mileszs/ack.vim'
    Plug 'mattn/emmet-vim'
    Plug 'MattesGroeger/vim-bookmarks'
    Plug 'gennaro-tedesco/nvim-peekup'

    " tab & lines
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
    Plug 'akinsho/nvim-bufferline.lua'
 
    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'glepnir/lspsaga.nvim'
    Plug 'folke/lsp-trouble.nvim'

    " Syntax
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " git
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'kdheepak/lazygit.nvim'

    " language
    Plug 'pangloss/vim-javascript'    " JavaScript support
    Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
    Plug 'HerringtonDarkholme/yats.vim'

    " formater
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }

 call plug#end()
