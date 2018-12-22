if has("terminfo")
    set t_Co=16
    set t_AB=^[[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
    set t_AF=^[[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
    set t_Co=16
    set t_Sf=^[[3%dm
    set t_Sb=^[[4%dm
endif
set term=xterm
set background=dark
set backupext=.bak
set showmatch
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set background=dark
set showcmd
filetype indent on

set incsearch
set hlsearch

" Show tabs and trailing whitespace
set lcs=tab:\|\ ,trail:·
set list
" Strip trailing whitespace (,ss)
function! StripWhitespace()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        :%s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
" noremap <leader>W :w !sudo tee % > /dev/null<CR>

"F5 to wipe out trailing whitespaces"
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
