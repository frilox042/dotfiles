
" Automotic vim-plug installation {{{

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" }}}

call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Plug 'SirVer/ultisnips'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdcommenter'
Plug 'unblevable/quick-scope'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/vim-cursorword'
Plug 'matze/vim-move'
Plug 'liuchengxu/vim-which-key'
Plug 'wellle/targets.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'brooth/far.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-rooter'
Plug '/tpope/vim-repeat'

" Airline {{{

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" }}}

" Coc {{{

Plug 'neoclide/coc.nvim'

" }}}

" FZF {{{

Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" }}}

" Git {{{

Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" }}}

" Language & Syntax {{{

Plug 'dense-analysis/ale'
Plug 'honza/vim-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'tridactyl/vim-tridactyl'
Plug 'preservim/tagbar'

" }}}

" Themes {{{

" Plug 'srcery-colors/srcery-vim'
Plug 'bignimbus/pop-punk.vim'

" }}}

" Initialize plugin system
call plug#end()

source $XDG_CONFIG_HOME/nvim/vim-plug/config/vimling.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/airline.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/nerdtree.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/goyo.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/ale.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/coc.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/easymotion.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/fzf.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/hexokinase.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/indent-guides.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/indentline.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/quick-scope.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/signify.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/move.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/which-key.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/tagbar.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/far.vim
source $XDG_CONFIG_HOME/nvim/vim-plug/config/rooter.vim

" vim:fileencoding=utf-8:ft=vim:foldmethod=marker
