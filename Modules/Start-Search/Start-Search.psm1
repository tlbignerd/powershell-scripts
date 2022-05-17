Add-Type -AssemblyName System.Web

#.ExternalHelp Start-Search.help.txt
function Start-Search {
    param(
        [string] $searchString = "", 
        [string] $searchUrl = "https://neeva.com/search?q="
    )

    $encodedString = [System.Web.HttpUtility]::HtmlEncode($searchString)
    # Open search in default browser
    Start-Process "$($searchUrl)$($encodedString)"
}

Export-ModuleMember -Function Start-Search