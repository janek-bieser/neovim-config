if has('autocmd')
    augroup formatting
        au!

        " use word wrap
        au filetype text setlocal wrap nolist lbr nonumber
        au filetype markdown setlocal wrap nolist lbr
        au filetype html,xhtml,xml,xsd setlocal wrap nolist lbr
        au filetype tex setlocal wrap nolist lbr

        au filetype ruby setlocal ts=2 sw=2

        au filetype go setlocal nolist
    augroup END

    augroup autosave
        au!
        au BufLeave,FocusLost * silent! wall
    augroup END
endif
