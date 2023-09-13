oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/M365.omp.json | Invoke-Expression

Function gs {git status}
Function add {git add .}
Function commit 
{
    git commit -m $args[0]
}

Function nconf {Set-Location -Path ~\AppData\Local\nvim}
Function cd_back {cd ..}
Function cd_back_twice {cd ..\..}
Function n {nvim .}
Function home { Set-Location -Path  ~\ }

Function expand {
    param (
        [Parameter(Mandatory=$true)]
        [Alias("d")]
        [string]$sourceDirectory
    )

    if (-not (Test-Path $sourceDirectory)) {
        Write-Error "Source directory does not exist: $sourceDirectory"
        return
    }

    # Loop over each ZIP file in the directory
    Get-ChildItem -Path $sourceDirectory -Filter *.zip | ForEach-Object {
        # Define the destination directory (same as source directory in this example)
        $destinationDirectory = $_.FullName.Replace('.zip', '')

        # Expand the archive
        Expand-Archive -Path $_.FullName -DestinationPath $destinationDirectory
        Write-Output "Unzipped $($_.Name) to $destinationDirectory"
    }
}

Set-Alias -Name touch -Value New-Item
Set-Alias -Name k -Value kubectl
Set-Alias -Name terra -Value terraform
Set-Alias -Name py -Value python
Set-Alias -Name .. -Value cd_back
Set-Alias -Name ... -Value cd_back_twice
