let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_bold_vertical_split_line = 1
let g:nord_uniform_diff_background = 1
let g:nord_bold = 0
let g:nord_italic_comments = 1
let g:nord_underline = 1
augroup nord-theme-overrides
  autocmd!
  " Use 'nord7' as foreground color for Vim comment titles.
  autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END
