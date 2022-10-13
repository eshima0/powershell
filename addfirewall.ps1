$firewalls = Import-Csv -Path $PSScriptRoot\firewall.csv

foreach($firewall in $firewalls) {
    New-NetFirewallRule -DisplayName $firewall.name -Direction Inbound -LocalPort $firewall.port -Action $firewall.action -Protocol TCP
}


asd asd asd asd asd asd asd asd 