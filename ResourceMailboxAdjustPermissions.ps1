Set-MailboxFolderPermission -Identity CalendarEmail@domain.com:\calendar -User Default -AccessRights Editor
Set-CalendarProcessing -Identity CalendarEmail@domain.com -AddOrganizerToSubject $true -DeleteComments $false -DeleteSubject $false
