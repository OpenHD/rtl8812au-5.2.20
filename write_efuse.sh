sudo systemctl stop openhd

iface=$(iwconfig 2>/dev/null | grep '^[a-zA-Z0-9]' | awk '$1 != "wlan0" {print $1; exit}')
echo $iface 
ifconfig $iface down
ifconfig $iface up

rtwpriv $iface efuse_set wlwfake,00,29810B860C00000002000000000000
rtwpriv $iface efuse_set wlwfake,10,1615151616161D1D1D1D1DEDEEE0FFFF
rtwpriv $iface efuse_set wlwfake,20,FFFF262321202424252629292B2C2D2D
rtwpriv $iface efuse_set wlwfake,30,FDEEFFFEFF00EEFFFF181716171717
rtwpriv $iface efuse_set wlwfake,40,1F1F1B1B1B0DEEFFFFEDE0FFFF25242423
rtwpriv $iface efuse_set wlwfake,50,24211F1C1C1B1F212324EDEEFFFEFF
rtwpriv $iface efuse_set wlwfake,60,00EEFFFFEFFFFEFFFFFFEFFFFFFEFFFF
rtwpriv $iface efuse_set wlwfake,70,FFFFEFFFFFFEFFFFFFEFFFFFFEFFFFEFFFF
rtwpriv $iface efuse_set wlwfake,80,FFFFEFFFFFFEFFFFFFEFFFFFFEFFFFFFEFFFF
rtwpriv $iface efuse_set wlwfake,90,FFFFEFFFFFFEFFFFFFEFFFFFFEFFFFFFEFFFF
rtwpriv $iface efuse_set wlwfake,a0,FFFFEFFFFFFEFFFFFFEFFFFFFEFFFFFFEFFFF
rtwpriv $iface efuse_set wlwfake,b0,FFFFEFFFFFFEFFFFFF7F1C200033880088
rtwpriv $iface efuse_set wlwfake,c0,000000100000005500FF03FFFEFFFF
rtwpriv $iface efuse_set wlwfake,d0,DA0B128841664200C0CAAF9C090352
rtwpriv $iface efuse_set wlwfake,e0,65616C74656B0D033830322E31316E20
rtwpriv $iface efuse_set wlwfake,f0,4E49430803313233343536FFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,100,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,110,FFFFFFFFFFFFFF2103030AFF00FFFFFF
rtwpriv $iface efuse_set wlwfake,120,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,130,81AE982D03939611FC8C00119B784ACE
rtwpriv $iface efuse_set wlwfake,140,E048E070270078EA60D0E12032634F3C
rtwpriv $iface efuse_set wlwfake,150,124092158B4A4F8A15D19800FFFFFFFF
rtwpriv $iface efuse_set wlwfake,160,FFFFFFFFFFFFFFFF0002E16312290300
rtwpriv $iface efuse_set wlwfake,170,CB3FA0E0C2F0F7CF0136083205EB94D7
rtwpriv $iface efuse_set wlwfake,180,146DC86780E0F88030803038FFFFFFFF
rtwpriv $iface efuse_set wlwfake,190,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1a0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1b0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1c0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1d0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1e0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1f0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF


echo "Setting command executed!"
rtwpriv $iface efuse_get wlrfkmap
