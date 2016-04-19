$Installed = Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall, HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall  |
    Get-ItemProperty |
        Where-Object {$_.DisplayName -match "XXXProgramNameXXX" } |
            Select-Object -Property DisplayName, UninstallString

ForEach ($ver in $Installed) {

    If ($ver.UninstallString) {

        $uninst = $ver.UninstallString
        $uninst = $uninst -replace "/I", "/x "
        Start-Process cmd -ArgumentList "/c $uninst /quiet /norestart" -NoNewWindow
    }
}
