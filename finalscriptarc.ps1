#import CSV Server
$CSV = Import-CSV -Path "XXXXXXX\script.csv" -Delimiter ","
#Connect on Azure 
connect-azaccount -Subcription XXXXXXXXXX


foreach($Ligne in $CSV)
{
#select on the columm ComputerName the first Line on the CSV
$Computername=$Ligne.ComputerName
#select on the columm Resource Group the first Line on the CSV
$resourcegroupe=$ligne.ResourceGroup
#select on the columm Location the first Line on the CSV
$Region=$ligne.location

#Connexion the VM present in ComputerName

$sessions = New-PSSession -ComputerName $Computername

#Enable in Azure

Connect-AzConnectedMachine -ResourceGroupName $resourcegroupe -Location $Region -PSSession $sessions

}
