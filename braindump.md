## Braindump - vim tasks that I use to forget

#### Search and replace across many files

First read the list of files on which you want to run the command.

  `:args path/*/*`

Run the command:

  `:argdo %s/foo/bar/g` | update

update - saves the modified files


#### Folding

"folding settings
"Some common key bindings:
"`za` - toggles
"`zc` - closes
"`zo` - opens
"`zR` - open all
"`zM` - close all
"http://smartic.us/2009/04/06/code-folding-in-vim/

#### Ack

Quickfix window shortcuts:

o    to open (same as enter)
O    to open and close quickfix window
go   to preview file (open but maintain focus on ack.vim results)
t    to open in new tab
T    to open in new tab silently
h    to open in horizontal split
H    to open in horizontal split silently
v    to open in vertical split
gv   to open in vertical split silently
q    to close the quickfix window

#### TABS

" tabedit % - opens split in new tab
" tabclose - close edit
" tabp, tabn - previous, next tabs
"
" :tabedit % will open the current buffer in a new tab
" :tabclose when finished and return to your finely tuned set of splits.

