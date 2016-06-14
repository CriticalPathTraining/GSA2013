Add-PSSnapin "Microsoft.SharePoint.PowerShell"
Write-Host

$contentService = [Microsoft.SharePoint.Administration.SPWebService]::ContentService
$devDashboardSettings = $contentService.DeveloperDashboardSettings

if ($devDashboardSettings.DisplayLevel -eq "On"){
  $devDashboardSettings.DisplayLevel = "Off"
  Write-Host "Developer dashboard disabled." -ForegroundColor Gray
} else {
  $devDashboardSettings.DisplayLevel = "On"
  Write-Host "Developer dashboard enabled." -ForegroundColor Gray
}
$devDashboardSettings.Update()

Write-Host "Finished!" -ForegroundColor Green