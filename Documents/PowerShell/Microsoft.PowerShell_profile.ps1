$PSModuleAutoLoadingPreference = 'None'

Import-Module Microsoft.PowerShell.Utility
Import-Module Microsoft.PowerShell.Management
Import-Module Microsoft.PowerShell.Security

oh-my-posh init pwsh --config ~/.pwsh/trd.omp.json | Invoke-Expression
oh-my-posh init pwsh | Invoke-Expression

del alias:ls -Force

function ls() {
    Get-ChildItem | Format-Wide -Column 6
}

function la() {
    Get-ChildItem
}

clear

function Install-Scoop {
	Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
	Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

function Run-CttUtil {
	iex "& { $(irm https://christitus.com/win) } -Config ~/.ctt_config.json -Run"
}