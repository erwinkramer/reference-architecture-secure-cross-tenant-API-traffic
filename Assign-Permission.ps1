$serverServicePrincipalObjectId = "56fee331-52e8-4c35-889c-ce263cd38655"
$managedIdentityObjectId = "0799566b-d71b-409e-8af8-a8ef9edadb17"
$appRoleId = "ac54df91-f707-4d44-9810-345d841d9b2c"

Connect-MgGraph -Scopes "Application.ReadWrite.All", "Directory.ReadWrite.All", "AppRoleAssignment.ReadWrite.All" -TenantId b81eb003-1c5c-45fd-848f-90d9d3f8d016

New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $serverServicePrincipalObjectId -PrincipalId $managedIdentityObjectId -ResourceId $serverServicePrincipalObjectId -AppRoleId $appRoleId
