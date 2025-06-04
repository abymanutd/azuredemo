# Ensure Azure CLI is installed
if (-not (Get-Command "az" -ErrorAction SilentlyContinue)) {
    Write-Host "Azure CLI is not installed. Please install it from https://aka.ms/installazurecliwindows"
    exit 1
}

# Login interactively
Write-Host "Logging into Azure..."
az login

# Optional: Set subscription
$subscriptionId = "your-subscription-id-or-name"
if ($subscriptionId -ne "") {
    az account set --subscription $subscriptionId
    Write-Host "Subscription set to $subscriptionId"
}

# Optional: Open Azure Portal
Start-Process "https://portal.azure.com"
