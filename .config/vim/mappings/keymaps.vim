source $HOME/.config/vim/mappings/cpp/clang.vim
source $HOME/.config/vim/mappings/latex/latex.vim

autocmd bufenter,bufnew *.tex call Latex()
autocmd bufenter,bufnew *.cpp call Clang()
autocmd bufenter,bufnew *.hpp call Clang()
