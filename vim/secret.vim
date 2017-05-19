" Clear cache
nnoremap <F3> :CtrlPClearAllCaches<CR>

" for git controls
nnoremap <Leader>gc :!git add .&& git commit -S -m 'WIP'<CR>

" Visual mode controls
vnoremap < <gv
vnoremap > >gv

nnoremap <Leader>q :q!<CR>
nnoremap ss :w!<CR>

" Session management in vim
nnoremap <leader>ss :mksession!<CR>
nnoremap <leader>so :source Session.vim<CR>

" Shorcuts to save and quit a session
nnoremap <C-s> :wall<cr>
nnoremap <C-q> :qall<CR>
"
" Support for repeat.vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" dp deletes a para
onoremap p ap

" Dark color scheme
colorscheme gotham256
