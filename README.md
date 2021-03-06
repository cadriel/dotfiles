# Quick start

This is a culmination of [holman](https://github.com/holman) and [aniket](https://github.com/aniketpant) dotfiles combined into what I need. I researched a bunch of dotfiles solutions and this is what I've come up with thus far.

Also uses Mathias Bynen's dotfiles as reference, in particular the osx install defaults; [mathiasbynens](https://github.com/mathiasbynens/dotfiles).

## Install

Installation is currently a couple of steps dependant on your intent;

### Base symlink and install
1. Clone this repo & its submodules.
   `git clone git@github.com:cadriel/dotfiles.git ~/.dotfiles`
2. `cd ~/.dotfiles`
3. `git submodule init`
4. `git submodule update --init`
5. `rake install`

### Setup and install dependencies

This runs the install scripts you might have defined.
You can run it periodically to ensure you have the latest changes applied.
The script should already be in your path provided you've already run `rake install`.

Note that the script is setup to run the homebrew installation first to avoid dependency issues with your other installers.

`~/.dotfiles/script/install`, will install any dependencies you've defined in the `<topic>/install.sh` files.

#### MacOs Defaults
Install scripts for MacOs are split into two. Global parameters we'd want on all macs are inside the install.sh script, however
any machine specific paremeters are found within other scripts in the same folder. These should be run manually for each machine.

## Components

Taken from @holman's, there are a few special files in the repository:

* `bin/`, anything in `bin/` will get added to your `$PATH` and made available everywhere.
* `<topic>/*.zsh`, any files ending with `.zsh` will get loaded into your environment.
* `<topic>/*.symlink`, any files AND folders ending with `.symlink` will get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded in your home directory. These get symlinked when you run `rake install`.
* `<topic>/*.completion.sh`, any files ended in `completion.sh` get loaded last so that they get loaded after we set up zsh autocomplete functions.
* `<topic>/install.sh`, any files named `install.sh` will get run during the Setup and install step above.

## Thanks

Thanks go out to everyone who has ever created a dotfiles repo - you've likely helped me in one way or another.

