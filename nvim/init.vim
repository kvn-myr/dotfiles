" general vim settings
source $HOME/.config/nvim/settings/settings.vim 

" plugins
source $HOME/.config/nvim/plugins/plugins.vim

" appearance
source $HOME/.config/nvim/colors/colors.vim

" telescope configuration
source $HOME/.config/nvim/plugins/config/telescope.vim

" lsp-native and nvim-cmp (autocompletion) config
luafile $HOME/.config/nvim/plugins/config/lsp.lua

" zettelkasten
luafile $HOME/.config/nvim/plugins/config/nerveux.lua

" treesitter
luafile $HOME/.config/nvim/plugins/config/treesitter.lua

" vimtex
source $HOME/.config/nvim/plugins/config/vimtex.vim
