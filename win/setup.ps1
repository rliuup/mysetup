#Requires -RunAsAdministrator

New-Item -Path $HOME\.gitconfig -ItemType SymbolicLink -Value $PSScriptRoot\dotfiles\.gitconfig -Force
New-Item -Path $HOME\.wslconfig -ItemType SymbolicLink -Value $PSScriptRoot\dotfiles\.wslconfig -Force

if ($null -ne (Get-Command oh-my-posh).Name) {
  New-Item -ItemType Directory -Force -Path $HOME\.pwsh | Out-Null
  New-Item -Path $HOME\.pwsh\ohmyposhv3.json -ItemType SymbolicLink -Value $PSScriptRoot\oh-my-posh\ohmyposhv3.json -Force
  New-Item -Path $HOME\.pwsh\Microsoft.PowerShell_profile.ps1 -ItemType SymbolicLink -Value $PSScriptRoot\oh-my-posh\Microsoft.PowerShell_profile.ps1 -Force

  # $path = [Environment]::GetFolderPath("MyDocuments")+'\WindowsPowerShell'
  # New-Item -Path $path\Microsoft.PowerShell_profile.ps1 -ItemType SymbolicLink -Value $PSScriptRoot\oh-my-posh\Microsoft.PowerShell_profile.ps1 -Force

  New-Item -Path $PSHOME\Profile.ps1 -ItemType SymbolicLink -Value $PSScriptRoot\oh-my-posh\Microsoft.PowerShell_profile.ps1 -Force
}