function! Latex()
   set syntax=tex
   inoremap <silent> ;d \documentclass{<++>}<++><esc>Fsli
   inoremap <silent> ;i \begin{itemize}<cr>\end{itemize}<++><esc>ko
   inoremap <silent> ;g \includegraphics[<++>]{}<esc>i
   inoremap <silent> ;e \begin{enumerate}<cr>\end{enumerate}<++><esc>ko
   inoremap <silent> ;p \usepackage<++>{}<esc>i
   inoremap <silent> ;u \item<space>
   inoremap <silent> ;o \item[]<++><esc>F]i
   inoremap <silent> ;c \chapter{}<cr><++><esc>k0f}i
   inoremap <silent> ;sc \section{}<cr><++><esc>k0f}i
   inoremap <silent> ;sb \subsection{}<cr><++><esc>k0f}i
   inoremap <silent> ;ss \subsubsection{}<cr><++><esc>k0f}i
   inoremap <silent> ;bf \textbf{}<esc>i
   inoremap <silent> ;be \begin{DELRN}<Enter><++><Enter>\end{DELRN}<esc>:MultipleCursorsFind<space>DELRN<cr>c
endfunction
