Minimal project(s) set up
=========================

Then I simply get into this directory and do
```bash
vim -Nu ~/.vim/plugged/YouCompleteMe/vimrc_ycm_minimal -O dir1/bar.hs dir2/foo.hs
```
Once Vim is open, I do
```vim
:source /home/enrico/lsp-examples/vimrc.generated
:YcmRestartServer
```
hit <kbd>O</kbd> to accept, and wait with the cursor on `main` to see
that the YCM does work.

Then I move to the window on the right, and the error is shown.

---

The content of `vimrc.generated` is
```vim
let g:ycm_lsp_dir = '/home/enrico/lsp-examples'
let g:ycm_language_server = []
let g:ycm_language_server += [
      \   {
      \     'name': 'haskell-language-server',
      \     'cmdline': [ 'haskell-language-server-wrapper', '--lsp' ],
      \     'filetypes': [ 'haskell', 'lhaskell' ],
      \     'project_root_files': [ 'stack.yaml', 'cabal.project', 'package.yaml', 'hie.yaml' ],
      \   },
      \ ]
```
the content of `/home/enrico/lsp-examples/haskell/snippet.vim` is
```vim
let g:ycm_language_server += [
  \   {
  \     'name': 'haskell-language-server',
  \     'cmdline': [ 'haskell-language-server-wrapper', '--lsp' ],
  \     'filetypes': [ 'haskell', 'lhaskell' ],
  \     'project_root_files': [ 'stack.yaml', 'cabal.project', 'package.yaml', 'hie.yaml' ],
  \   },
  \ ]
```
and the content of `/home/enrico/lsp-examples/haskell/install.py` is
```python
#!/usr/bin/env python3

print( 'NOTE: For haskell support read the README.md.' )
```
