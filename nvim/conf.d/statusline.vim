fun! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, ' ' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, ' ' . info['warning'])
  endif
  return join(msgs, ' ')
endfunction

set laststatus=2
set statusline=
set statusline+=\ %f\ %*

" ~> Move to the right
set statusline+=%=
set statusline+=%{StatusDiagnostic()}
