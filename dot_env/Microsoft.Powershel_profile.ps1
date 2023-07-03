oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/jandedobbeleer.omp.json | Invoke-Expression

Function git_status {git status}
Function git_add {git add .}
Function git_commit {git commit -m}
Function git_push {git push}

Function cd_nvim {Set-Location -Path ~\AppData\Local\nvim}
Function cd_back {cd ..}
Function cd_back_twice {cd ..\..}
Function nvim_tree {nvim .}

Set-Alias -Name list -Value Get-ChildItem
Set-Alias -Name gs -Value git_status
Set-Alias -Name add -Value git_add
Set-Alias -Name commit -Value git_commit
Set-Alias -Name push -Value git_push

Set-Alias -Name nconf -Value cd_nvim
Set-Alias -Name touch -Value New-Item
Set-Alias -Name k -Value kubectl
Set-Alias -Name terra -Value terraform
Set-Alias -Name py -Value python
Set-Alias -Name .. -Value cd_back
Set-Alias -Name ... -Value cd_back_twice
Set-Alias -Name n. -Value nvim_tree
