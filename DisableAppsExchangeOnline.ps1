Get-App -OrganizationApp | ? {$_.DisplayName -eq 'Bing Maps'} | Set-App -OrganizationApp -Enabled $false
Get-App -OrganizationApp | ? {$_.DisplayName -eq 'Action Items'} | Set-App -OrganizationApp -Enabled $false
Get-App -OrganizationApp | ? {$_.DisplayName -eq 'My Templates'} | Set-App -OrganizationApp -Enabled $false
Get-App -OrganizationApp | ? {$_.DisplayName -eq 'Unsubscribe'} | Set-App -OrganizationApp -Enabled $false
Get-App -OrganizationApp | ? {$_.DisplayName -eq 'Suggested Meetings'} | Set-App -OrganizationApp -Enabled $false

Get-Mailbox | Set-Clutter -Enable $false
