param($ip)
if(!$ip -or !$porta){
    echo "Pentest Security - PORTSCAN"
    echo "Exemplo de uso: .\portscanner.ps1 192.168.0 8080"
} else{
$topports = 21,22,3306,80,443
try {foreach ($porta in $topports){
if (Test-Connection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet){
        echo "Porta $porta  Aberta"
}} else {
        echo "Porta $porta fechada"
}} catch{}
}

