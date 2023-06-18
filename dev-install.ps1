# Applications installed using Winget
Write-Host "Software installation for development environment:" -ForegroundColor Cyan

# Define the list of applications to install
$applications = @(
    "Google.Chrome",
    "Mozilla.Firefox.DeveloperEdition",
    "Git.Git",
    "Microsoft.DotNet.SDK.7",
    "Microsoft.DotNet.SDK.6",
    "Microsoft.DotNet.SDK.5",
    "Microsoft.VisualStudioCode",
    "OpenJS.NodeJS",
    "Microsoft.VisualStudio.2022.Community"
)

# Loop through each application and automate the "yes" response
foreach ($app in $applications) {
    Write-Host "Installing $app"
    Start-Process -FilePath "powershell.exe" -ArgumentList "-Command", "echo y | winget install -e --id $app" -NoNewWindow -Wait
}