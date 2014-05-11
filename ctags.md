## CTAGS in VIM

Rationale: 

It happens every so often that I forget how to use ctags in vim (mostly because I haven't used it for a while).

This write-up is supposed to help me out to remember it.

### CTAGS generation

To make ctags useful you need to generate them quite often.  It can be a mundane task, so it should be automated.

I came across this article by Tim Pope: http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html, that I enjoyed so my setup is more or less a copy of the one that is described in the article.

```sh
  git config --global init.templatedir '~/.git_template'
  mkdir -p ~/.git_template/hooks
```

~/.git_template/hooks/ctags.sh
```sh
  #!/bin/sh
  set -e
  PATH="/usr/local/bin:$PATH"
  trap "rm -f .git/tags.$$" EXIT
  ctags --tag-relative -Rf.git/tags.$$ --exclude=.git --exclude=vendor --languages=-javascript,sql
  mv .git/tags.$$ .git/tags
```

Now you need to edit your git hooks to execute that script.

So now every commit will trigger tags generation into your .git/tags file.


Also this is handy: `git config --global alias.ctags '!.git/hooks/ctags'` - this adds `git ctags` to generate on tags on demand.

### How to navigate over ctags?

  ^] - go to the tag definition

If you have more than one tag with the same name:

  :tselect will display the tag list and let you choose one with a number.
  :tnext and :tprev will send you to the next and previous tag in the list,

  :ltag will load the tags into the location list window. You can then view that window by executing :lopen.

For shortcuts see vimrc.
