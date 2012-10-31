# Joe's dotfiles.

Like @paul_irish says, [mathias's readme](https://github.com/mathiasbynens/dotfiles/) is where to start. I'm like four places removed and I'm sure some unwise decisions have been made along the way. The biggest changes I've made have been to get rid of Vim related stuff (blech) and use zsh instead of bash.

I also customize my prompt in a way that's based heavily on [this Nettuts+ article](http://net.tutsplus.com/tutorials/tools-and-tips/how-to-customize-your-command-prompt/)

The rest of this I'm shamelessly copying from Paul's readme. Why? The doctor says I'm lazy.


## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
PATH=/opt/local/bin
PATH=$PATH:/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/local/sbin
# ...

export PATH
```

## Syntax highlighting

…is really important. even for these files.

Install [Dotfiles Syntax Highlighting](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) via [Sublime Text 2 Package Control](http://wbond.net/sublime_packages/package_control)


### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```


## overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)

#### shell environement
* `.aliases`
* `.zsh_profile`
* `.zsh_prompt`
* `.zshrc`
* `.exports`
* `.functions`
* `.extra` - not included, explained above

#### manual run
* `.osx` - run on a fresh osx machine

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline


## Installation

```bash
git clone https://github.com/JoeMorgan/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.
