$CSV = Import-CSV -Path "C:\Users\Administrateur\Desktop\script.csv" -Delimiter ","
connect-azaccount



foreach($Ligne in $CSV)



{



$Computername=$Ligne.ComputerName
$resourcegroupe=$ligne.ResourceGroup
$Region=$ligne.location



$sessions = New-PSSession -ComputerName $Computername



Connect-AzConnectedMachine -ResourceGroupName $resourcegroupe -Location $Region -PSSession $sessions



}