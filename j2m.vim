function! s:J2m() range
	let cmd = [
		\ '!j2m',
		\ '--stdin',
		\ '-m'
		\ ]
	execute a:firstline . ',' . a:lastline . join(cmd)
endfunction

function! s:M2j() range
	let cmd = [
		\ '!j2m',
		\ '--stdin',
		\ '-j'
		\ ]
	execute a:firstline . ',' . a:lastline . join(cmd)
endfunction

augroup j2m
	autocmd!
	autocmd FileType markdown
		\ command! -bar -nargs=0 -buffer -range=% J2m <line1>,<line2>call s:J2m()
	autocmd FileType markdown
		\ command! -bar -nargs=0 -buffer -range=% M2j <line1>,<line2>call s:M2j()
augroup END
