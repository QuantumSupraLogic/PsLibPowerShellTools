Set-StrictMode -Version 3.0

function New-TemporaryDirectory {
    <#
    .SYNOPSIS
        Creates a temporary directory and returns its name
    .DESCRIPTION
        The directory created will be located in %TEMP%.
    .EXAMPLE
        $tempFolder = New-TemporaryDirectory 
        Set-Location $tempFolder
        Invoke-Item .
        To create a temporary directory and open it
    #>
    $parent = [System.IO.Path]::GetTempPath()
    [string] $name = [System.Guid]::NewGuid()
    New-Item -ItemType Directory -Path (Join-Path $parent $name)
}