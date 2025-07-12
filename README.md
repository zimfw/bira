bira
====

A fork of [bira]'s theme.

<img width="706" src="https://zimfw.github.io/images/prompts/bira@2.png">

What does it show?
------------------

  * On the left:
    * username@hostname
    * Working directory.
    * Current git branch name, or commit short hash when in ['detached HEAD' state].
      Also an indicator when in a dirty working tree.
    * Python [venv] indicator.
    * `#` when root, `$` otherwise.
  * On the right:
    * Status code when there was an error.

Advanced settings
-----------------

The git indicators can be customized by changing the following git-info module
context formats:

| Context name | Description       | Default format             |
| ------------ | ----------------- | -------------------------- |
| branch       | Branch name       | `%b`                       |
| commit       | Commit short hash | `%c`                       |
| dirty        | Dirty state       | `%F{red}%{%G●%}%F{yellow}` |

Use the following command to override a git-info context format:

    zstyle ':zim:git-info:<context_name>' format '<new_format>'

For detailed information about these and other git-info settings, check the
[git-info documentation].

These advanced settings must be overridden after the theme is initialized.

Requirements
------------

Requires Zim's [git-info] module to show git information.

[bira]: https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/bira.zsh-theme
['detached HEAD' state]: https://git-scm.com/docs/git-checkout#_detached_head
[venv]: https://docs.python.org/3/library/venv.html
[git-info documentation]: https://github.com/zimfw/git-info/blob/master/README.md#settings
[git-info]: https://github.com/zimfw/git-info
