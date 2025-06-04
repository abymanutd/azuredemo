#Install-Module -Name AZ
Get-Module
Install-Module -Name AZ -Repository PSGallery

#connect to azure
Connect-AzAccount -DeviceCode

#or 
Connect-AzAccount -ServicePrincipal `
  -Tenant 'your-tenant-id' `
  -ApplicationId 'your-app-id' `
  -Credential (Get-Credential)


#check your azure subscript
Get-AzSubscription
#Get all the resource Group
Get-azresou
Set-AzVm -ResourceGroupName "RG-CP-PR-EUS-01" -Name "VM-CP-WEB-PR-EUS-01" -Generalized