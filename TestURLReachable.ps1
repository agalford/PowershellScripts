(Get-Content .\urls.txt) -split [Environment]::NewLine | %{
    $Url = $_
    Try {
        Invoke-WebRequest -Uri $Url -ErrorAction Stop | Out-Null
        Write-Host -ForegroundColor Green ($Url + " is reachable")
    }
    Catch [Exception] {
        Write-Host -ForegroundColor Red ($Url + " is blocked")
    }
}
