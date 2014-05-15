## Braindump - vim tasks that I'm use to forget

#### Search and replace across many files

First read the list of files on which you want to run the command.

  `:args path/*/*`

Run the command:

  `:argdo %s/foo/bar/g` | update

update - saves the modified files

