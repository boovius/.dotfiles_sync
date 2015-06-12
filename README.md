DOTFILES_SYNC
=============

A collection of very useful config files and sync
-------------------------------------------------

## Installation
 - fork this repo
 - clone your fork into ~/.dotfiles_sync i.e. `git clone .... ~/.dotfiles_sync`
 - cd into the dir
 - change shell script to executable: `chmod +x makesymlinks.sh`

## Syncing your dotfiles
 - run sync command (from ~/.dotfiles_sync dir): `./makesymlinks.sh`
   - the sync will only update files in the ~/.dotfiles_sync/dotfiles dir
   - anything else in your home dir will be left untouched

## Adding new files
 - all new files should be added to the dotfiles dir (i.e. ~/.dotfiles_sync/dotfiles)
 - add files without the "."(dot) in front of their name i.e. vimrc, not .vimrc
   - the sync will append the dot to the file name when symlinking to your home dir
 - re-run the sync command

## Updating your dotfiles
 - make updates to the files in the ~/.dotfiles_sync/dotfiles dir, not your ~ (home) dir
 - commit your changes (and push em back up to your forked repo if you so desire)
 - re-run the sync command

### By Boovius
original sync script pulled from [Michael Smalley](https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh) and then updated by me
