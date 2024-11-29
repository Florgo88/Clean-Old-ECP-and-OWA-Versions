Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn
# Get the current Exchange server
$version = (Get-Command Exsetup.exe).Version
$processedversion= "$($version.Major).$($version.Minor).$($version.Build).$($version.Revision)"
# Get the path of Exsetup.exe and extract its parent directory
$path = (Get-Command Exsetup.exe).Source
$exinstall = Split-Path $path -Parent
$exinstall = Split-Path $exinstall -Parent


$folderPath = Join-Path $exinstall "ClientAccess\Owa\prem"
$folders = Get-ChildItem -Path $folderPath


# Get all folders that start with "15"
$folders = Get-ChildItem -Path $folderPath -Directory | Where-Object { $_.Name -like "15*" }

# Debugging: Output all folder names that match "15*"
Write-Host "Found the following folders:"
$folders | ForEach-Object { Write-Host $_.Name }

# Loop through each folder
foreach ($folder in $folders) {
    # Check if the folder name is not the processed version
    if ($folder.Name -ne $processedversion) {
        Write-Host "Attempting to remove folder: $($folder.FullName)"
        try {
            Remove-Item -Path $folder.FullName -Recurse -Force
            Write-Host "Successfully removed folder: $($folder.FullName)"
        } catch {
            Write-Host "Failed to remove folder: $($folder.FullName). Error: $_"
        }
    } else {
        Write-Host "Kept folder: $($folder.FullName)"
    }
}

# Properly construct the folder path for the 'Owa\prem' directory
$folderPath = Join-Path $exinstall "ClientAccess\Owa"

# Get all folders that start with "15"
$folders = Get-ChildItem -Path $folderPath


# Get all folders that start with "15"
$folders = Get-ChildItem -Path $folderPath -Directory | Where-Object { $_.Name -like "15*" }

# Debugging: Output all folder names that match "15*"
Write-Host "Found the following folders:"
$folders | ForEach-Object { Write-Host $_.Name }

# Loop through each folder
foreach ($folder in $folders) {
    # Check if the folder name is not the processed version
    if ($folder.Name -ne $processedversion) {
        Write-Host "Attempting to remove folder: $($folder.FullName)"
        try {
            Remove-Item -Path $folder.FullName -Recurse -Force
            Write-Host "Successfully removed folder: $($folder.FullName)"
        } catch {
            Write-Host "Failed to remove folder: $($folder.FullName). Error: $_"
        }
    } else {
        Write-Host "Kept folder: $($folder.FullName)"
    }
}

# Properly construct the folder path for the 'Owa\prem' directory
$folderPath = Join-Path $exinstall "ClientAccess\ecp"

# Get all folders that start with "15"
$folders = Get-ChildItem -Path $folderPath

# Get all folders that start with "15"
$folders = Get-ChildItem -Path $folderPath -Directory | Where-Object { $_.Name -like "15*" }

# Debugging: Output all folder names that match "15*"
Write-Host "Found the following folders:"
$folders | ForEach-Object { Write-Host $_.Name }

# Loop through each folder
foreach ($folder in $folders) {
    # Check if the folder name is not the processed version
    if ($folder.Name -ne $processedversion) {
        Write-Host "Attempting to remove folder: $($folder.FullName)"
        try {
            Remove-Item -Path $folder.FullName -Recurse -Force
            Write-Host "Successfully removed folder: $($folder.FullName)"
        } catch {
            Write-Host "Failed to remove folder: $($folder.FullName). Error: $_"
        }
    } else {
        Write-Host "Kept folder: $($folder.FullName)"
    }
}