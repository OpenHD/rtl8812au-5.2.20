sudo systemctl stop openhd

iface=$(iwconfig 2>/dev/null | grep '^[a-zA-Z0-9]' | awk '$1 != "wlan0" {print $1; exit}')
echo $iface 
ifconfig $iface down
ifconfig $iface up

rtwpriv $iface efuse_get realmap > /external/realmap.txt
rtwpriv $iface efuse_get wlrfkmap > /external/fakemap.txt
rtwpriv $iface efuse_get realraw > /external/realraw.txt

rtwpriv $iface efuse_set wlwfake,00,29810B860C00FFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,20,FFFF2626242427272322222326272827
rtwpriv $iface efuse_set wlwfake,30,03EEFFFFEEFF22EEFFFF252525252626
rtwpriv $iface efuse_set wlwfake,b0,FFFFFFFFFFFFFFFF7F1B290003000088
rtwpriv $iface efuse_set wlwfake,d0,FFFF1A8841FFC2FFFFFFFFFFFF030301
rtwpriv $iface efuse_set wlwfake,e0,05034E4943030301FFFFFFFFFFFFFFFF

rtwpriv $iface efuse_get wlrfkmap > /external/fakemap_after.txt
rtwpriv $iface efuse_get realmap > /external/realmap_aftter.txt


echo "Setting command executed!"

