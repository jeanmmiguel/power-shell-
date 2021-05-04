#\
param($p1)
if(!$p1){
    echo "Security"
    echo "Exemplo de uso: .\script.ps1 192.168.0"
} else {
   foreach($ip in 1..254){
    try {$resp = ping -n 1 "$p1.$ip" | Select-string "byter=32"
    #$resp.Line.split(':')[0]
    
        } catch {}
    }

}

