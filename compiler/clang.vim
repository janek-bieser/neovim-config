let current_compiler = 'clang'

if !exists('g:clang_compile_db_dirs')
    let g:clang_compile_db_dirs = ['.', 'build']
endif

function! SetClangCompiler()
    let l:db_dirs = g:clang_compile_db_dirs

    let l:db = 'compile_commands.json'
    let l:cmd = 'clang\ -fsyntax-only'

    for db_dir in l:db_dirs
        let l:db_file_to_check = simplify(join([db_dir, l:db], '/'))

        if filereadable(l:db_file_to_check)
            let l:cmd = "clang-check\\ -p\\ ".l:db_file_to_check."\\ -extra-arg='-DGLM_COMPILER'"
            break
        endif
    endfor

    exe "CompilerSet makeprg=".l:cmd
endfunction

CompilerSet errorformat&
call SetClangCompiler()

