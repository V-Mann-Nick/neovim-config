function! ConnectToPipenvKernel()
  let l:kernel = system('echo "ipykernel_$(basename "$(pwd)")" | tr -d "\n"')
  call IPyConnect('--kernel', l:kernel, '--no-window')
endfunction

command! -nargs=0 ConnectToPipenvKernel call ConnectToPipenvKernel()
command! -nargs=0 RunQtConsole call jobstart("jupyter qtconsole --JupyterWidget.clear_on_kernel_restart=False --JupyterWidget.include_other_output=True --JupyterWidget.syntax_style=inkpot --JupyterWidget.font_size=16 --JupyterWidget.scrollbar_visibility=False --JupyterQtConsoleApp.hide_menubar=True --existing --no-confirm-exit --no-banner")

map <silent> <leader>jr <Plug>(IPy-Run)
nmap <leader>jk :ConnectToPipenvKernel<Enter>
nmap <silent> <leader>jqt :RunQtConsole<Enter>
map <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)
