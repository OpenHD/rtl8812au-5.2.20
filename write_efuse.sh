sudo systemctl stop openhd

iface=$(iwconfig 2>/dev/null | grep '^[a-zA-Z0-9]' | awk '$1 != "wlan0" {print $1; exit}')
echo $iface 
ifconfig $iface down
ifconfig $iface up

if [ "$1" == "tenda" ]; then
#TENDA 12U
rtwpriv $iface efuse_set wlwfake,00,29810B860C0008000200000000000000
rtwpriv $iface efuse_set wlwfake,10,3232323333333434343535F4FEEEFFFF
rtwpriv $iface efuse_set wlwfake,20,FFFF212028272E2D2D2C2B2A1C1C2A2A
rtwpriv $iface efuse_set wlwfake,30,02EFFFFFEEFF10FEFFFF303131333333
rtwpriv $iface efuse_set wlwfake,40,3232323434F4FEEEFFFFFFFF26252A2A
rtwpriv $iface efuse_set wlwfake,50,2D2C2B2A28251D1D272702EFFFFFEEFF
rtwpriv $iface efuse_set wlwfake,60,10FEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,70,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,80,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,90,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,a0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,b0,FFFFFFFFFFFFFFFFB01E1D0003000088
rtwpriv $iface efuse_set wlwfake,c0,000100100000005500FFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,d0,04261200416642502B73201C53090352
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
rtwpriv $iface efuse_set wlwfake,180,146DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,190,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1a0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1b0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1c0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1d0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1e0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,1f0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

elif [ "$1" == "asus" ]; then
#ASUS
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

elif [ "$1" == "pier" ]; then

rtwpriv $iface efuse_set wlwfake,00,6F38E0609031A8090200000000000000
rtwpriv $iface efuse_set wlwfake,10,004F3742EF2C7F232D2D2D02EEEEFFFF
rtwpriv $iface efuse_set wlwfake,20,FFFF2A2A2A282E2E2D2D2D2D2D2D2D2D
rtwpriv $iface efuse_set wlwfake,30,02EEFFFFEEFF10EEFFFF2D2D2D2D2D2D
rtwpriv $iface efuse_set wlwfake,40,2D2D2D2D2D04EEEEFFFFFFFF2A2A2A28
rtwpriv $iface efuse_set wlwfake,50,2E2E2D2D2D2D2D2D2D2D12EEFFFFEEFF
rtwpriv $iface efuse_set wlwfake,60,10EEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,70,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,80,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,90,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,a0,FFFFFFFFFFFFFFFF2826242A2A50FFFF
rtwpriv $iface efuse_set wlwfake,b0,FFFFFFFFFFFFFFFF7F1B290003000088
rtwpriv $iface efuse_set wlwfake,c0,000100100000005500FF01FFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,d0,DA0B12884166420013EFF80833090352
rtwpriv $iface efuse_set wlwfake,e0,65616C74656B0D033830322E31316E20
rtwpriv $iface efuse_set wlwfake,f0,4E49430803313233343536FFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,00,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,10,FFFFFFFFFFFFFF2103030AFF00FFFFFF
rtwpriv $iface efuse_set wlwfake,20,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,30,81AE982D03939611FC8C00119BFFFFFF
rtwpriv $iface efuse_set wlwfake,40,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,50,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,60,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,70,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,80,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,90,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,a0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,b0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,c0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,d0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,e0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
rtwpriv $iface efuse_set wlwfake,f0,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF

elif [ "$1" == "china" ]; then
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

else
echo "error"

fi




echo "Setting command executed!"
rtwpriv $iface efuse_get wlrfkmap
rtwpriv $iface efuse_set wlfk2map