#Requires -RunAsAdministrator

New-Item -Path $HOME/.gitconfig -ItemType SymbolicLink -Value .\config\.gitconfig
New-Item -Path $HOME/.wslconfig -ItemType SymbolicLink -Value .\config\.wslconfig