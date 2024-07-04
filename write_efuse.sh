sudo systemctl stop openhd

iface=$(iwconfig 2>/dev/null | grep '^[a-zA-Z0-9]' | awk '$1 != "wlan0" {print $1; exit}')
echo $iface 
ifconfig $iface down
ifconfig $iface up

rtwpriv $iface efuse_set wlwfake,00,29810B860C0008000000000000000000
rtwpriv $iface efuse_set wlwfake,10,262626262524292A2A2A2925EEEEFFFF
rtwpriv $iface efuse_set wlwfake,20,FFFF2626242427272322222326272827
rtwpriv $iface efuse_set wlwfake,30,03EEFFFFEEFF22EEFFFF252525252626
rtwpriv $iface efuse_set wlwfake,40,272727272813EEEEFFFFFFFF2D2D2A2A
rtwpriv $iface efuse_set wlwfake,50,2929242422222827252503EEFFFFEEFF
rtwpriv $iface efuse_set wlwfake,60,DDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,70,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,80,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,90,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,a0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,b0,FFFFFFFFFFFFFFFF291E200000000088
rtwpriv $iface efuse_set wlwfake,c0,000100100000005500FF02FFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,d0,DA0B1A884166C21CA770FA59F8090352
rtwpriv $iface efuse_set wlwfake,e0,65616C74656B0D033830322E31316E20
rtwpriv $iface efuse_set wlwfake,f0,4E49430803313233343536FFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,100,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,110,FFFFFFFFFFFFFF01FFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,120,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,130,81AE982D03939611FC8C00119BFFFFFF
rtwpriv $iface efuse_set wlwfake,140,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,150,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,160,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,170,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,180,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,190,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1a0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1b0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1c0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1d0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1e0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1f0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

echo "Setting command executed!"
rtwpriv $iface efuse_get wlrfkmap
