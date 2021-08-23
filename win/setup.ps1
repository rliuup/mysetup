#Requires -RunAsAdministrator

New-Item -Path $HOME/.gitconfig -ItemType SymbolicLink -Value $PWD\dotfiles\.gitconfig
New-Item -Path $HOME/.wslconfig -ItemType SymbolicLink -Value $PWD\dotfiles\.wslconfig