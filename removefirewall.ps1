$firewalls = Import-Csv -Path $PSScriptRoot\firewall.csv

foreach($firewall in $firewalls) {
    Remove-NetFirewallRule -DisplayName $firewall.name 
}