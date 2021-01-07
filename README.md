# .vim
1. Clone this repo to `~`.
```
cd ~
git clone git@github.com:lzl200102109/.vim.git
```
2. Create a symbolic link for `.vimrc`.
```
ln -s ~/.vim/.vimrc ~/.vimrc
```
3. Run update in vim.
```
:PlugUpdate
```
4. Install clang completer for youcompleteme.
```
cd ~/.vim/plugged/youcompleteme
./install.py --clang-completer
```
5. Install `Ack` for advanced keyword search in current project.
```
sudo apt-get install ack-grep
```
6. (optional) Create a soft link to `~/.bashrc`.
```
ln -s ~/.vim/.bashrc_[...] ~/.bashrc

```
7. (optional) NAS: copy the credentials to home directory and copy relevant content inside `fstab` to `/etc/fstab`.
```
cp ~/.vim/.ussmbcredentials ~/
cp ~/.vim/.gzsmbcredentials ~/
cat ~/.vim/fstab
```
