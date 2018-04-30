# .vim
1. clone this repo to `~`.
```
cd ~
git clone git@github.com:lzl200102109/.vim.git
```
2. create a symbolic link for `.vimrc`
```
ln -s ~/.vim/.vimrc ~/.vimrc
```
3. run update in vim
```
:PlugUpdate
```
4. install clang completer for youcompleteme
```
cd ~/.vim/plugged/youcompleteme
./install.sh --clang-completer
```
5. install `Ack`
```
sudo apt-get install ack-grep
```
