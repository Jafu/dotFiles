" airline config: Mode indicator
let g:airline_mode_map = {
	\'c': 'COMMAND',
	\'^S': 'S-BLOCK',
	\'R': 'REPLACE',
	\'s': 'SELECT',
	\'t': 'TERMINAL',
	\'V': 'V-LINE',
	\'^V': 'V-BLOCK',
	\'i': 'INSERT',
	\'__': '------',
	\'S': 'S-LINE',
	\'v': 'VISUAL',
	\'n': 'N'
\}

" airline configuration: don't show expected string
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" airline configuration: cursor position
let g:airline_section_z = "%l:%v[%L]"

" airline configuration: truncate branchname
let g:airline#extensions#branch#displayed_head_limit = 6
let g:airline#extensions#hunks#non_zero_only = 1

