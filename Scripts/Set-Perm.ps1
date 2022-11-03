<#
Execution Steps:

Import-Module ".\Scripts\Set-Perm.ps1"
cd  C:\Users\Public\Desktop
Set-Full-User-Permissions
#>
function Set-Full-User-Permissions([string]$path = ".\") {
    $name = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $acl = Get-Acl $path
    $accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($name, "FullControl", "Allow")
    $acl.SetAccessRule($accessRule)
    $acl | Set-Acl $path
    Get-ChildItem -Path $path -Recurse -Force | Set-Acl -aclObject $acl -Verbose    
}
