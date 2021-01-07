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
./install.py --clang-completer
```
5. install `Ack` for advanced keyword search in current project
```
sudo apt-get install ack-grep
```
6. (optional) create a soft link to `~/.bashrc`
```
ln -s ~/.vim/.bashrc_[...] ~/.bashrc

```
7. (optional) NAS:
  a. copy the credentials to home directory
```
cp ~/.vim/.ussmbcredentials ~/
cp ~/.vim/.gzsmbcredentials ~/
```
  b. copy relevant content inside `fstab` to `/etc/fstab`
```
cat ~/.vim/fstab
```
