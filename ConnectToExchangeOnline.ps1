#Connecting to Exchange Online

#Capture administrative credential for future connections.
$credential = get-credential

#Creates an Exchange Online session
$ExchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential $credential -Authentication Basic -AllowRedirection

#Import session commands
Import-PSSession $ExchangeSession
