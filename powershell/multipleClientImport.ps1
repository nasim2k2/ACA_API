$location = "\Postman\TE\aca-te\api-tests\"
cd $location
$sourceFilePath = "import-data\clientImport.txt"
Clear-Content $sourceFilePath
For ($i=0; $i -le 1; $i++) {
$randomValue = get-random
Add-Content $sourceFilePath "SF541612|Del_API_AutoTenant$randomValue|@gmail.com,@yahoo.com|123233"
}
get-content "import-data\clientImport.txt"
$currentLocationPath = get-location
Write-Output "The current location is $currentLocationPath"
cd $currentLocationPath"\powershell"