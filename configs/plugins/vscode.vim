xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine
nnoremap <silent> K <Cmd>call VSCodeCall('editor.action.showHover')<CR>
nnoremap <silent> <leader>f <Cmd>call VSCodeCall('eslint.executeAutofix')<CR>
nnoremap <silent> <Space>r <Cmd>call VSCodeCall('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <silent> <leader>r <Cmd>call VSCodeCall('editor.action.rename')<CR>

" Insert line without going into insert
nnoremap mo o<Esc>k
nnoremap mO O<Esc>j
" vnoremap <silent> gc <Cmd>call VSCodeCall('editor.action.commentLine')<CR>
