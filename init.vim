" ----------------------------------------------------------------------------
" ------------------------------------LEADER----------------------------------
" ----------------------------------------------------------------------------
let mapleader =","

if !exists('g:vscode')

  " ----------------------------------------------------------------------------
  " -----------------------------------Plugins----------------------------------
  " ----------------------------------------------------------------------------
  call plug#begin('~/.config/nvim/plugged')
  " " " ------------ Feel & Look ------------
  Plug 'dracula/vim', { 'as': 'dracula' } " Theme
  Plug 'bling/vim-airline' " Statusbar bottom
  Plug 'terryma/vim-smooth-scroll'
  " " Plug 'Yggdroot/indentLine'
  " " -------------- Syntax ---------------
  Plug 'chemzqm/vim-jsx-improve'
  Plug 'posva/vim-vue'
  Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'baskerville/vim-sxhkdrc'
  " Plug 'peitalin/vim-jsx-typescript'
  " Plug 'ianks/vim-tsx'
  Plug 'HerringtonDarkholme/yats.vim'
  " or Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'cakebaker/scss-syntax.vim'
  Plug 'jparise/vim-graphql'
  " " -------------- utility --------------
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround'
  Plug 'mattn/emmet-vim'
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Python syntax
  Plug 'chrisbra/Colorizer'
  Plug 'tomtom/tcomment_vim'
  Plug 'Galooshi/vim-import-js'
  Plug 'amoffat/snake' " vim script in python
  Plug 'bfredl/nvim-ipy', {'do': ':UpdateRemotePlugins'}
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'dense-analysis/ale'
  Plug 'rhysd/vim-grammarous'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  Plug 'tpope/vim-rhubarb'
  call plug#end()

  "
  " ----------------------------------------------------------------------------
  " ----------------------------Plugin Configs----------------------------------
  " ----------------------------------------------------------------------------
  source $HOME/.config/nvim/configs/plugins/auto_pairs.vim
  source $HOME/.config/nvim/configs/plugins/smooth_scroll.vim
  " source $HOME/.config/nvim/configs/plugins/indent_line.vim
  source $HOME/.config/nvim/configs/plugins/semshi.vim
  source $HOME/.config/nvim/configs/plugins/colorizer.vim
  " source $HOME/.config/nvim/configs/plugins/ctrlp.vim
  source $HOME/.config/nvim/configs/plugins/nvimIpy.vim
  source $HOME/.config/nvim/configs/plugins/coc.vim
  source $HOME/.config/nvim/configs/plugins/ale.vim
  source $HOME/.config/nvim/configs/plugins/pyindent.vim
  source $HOME/.config/nvim/configs/plugins/grammarous.vim
  source $HOME/.config/nvim/configs/plugins/rnvimr.vim
  source $HOME/.config/nvim/configs/plugins/fzf.vim
  source $HOME/.config/nvim/configs/plugins/graphql.vim


  " ----------------------------------------------------------------------------
  " -----------------------------------Imports----------------------------------
  " ----------------------------------------------------------------------------
  source $HOME/.config/nvim/configs/hotkeys.vim
  source $HOME/.config/nvim/configs/autocmds.vim
  source $HOME/.config/nvim/configs/qtsplit.vim
  source $HOME/.config/nvim/configs/general.vim
  source $HOME/.config/nvim/configs/filetypes/tex.vim
  source $HOME/.config/nvim/configs/filetypes/md.vim
  source $HOME/.config/nvim/configs/filetypes/html.vim
  source $HOME/.config/nvim/configs/filetypes/tsx.vim
      " ordinary neovim
else
  source $HOME/.config/nvim/configs/plugins/vscode.vim
endif
