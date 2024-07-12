source $FUNCTION
import axeron.prop
local verName="V1.0"
local version=10
local pid="[$$]"
local p="[-]"
local mycore="https://lrzozz.github.io/LunarBoost/vip/core.sh"
local id="$(settings get secure android_id)"
local trim_id="${id:0:6}"

case $1 in
  --info )
    echo "$name | VIP Information"
    echo "ID: $trim_id"
    echo "Version: $verName"
    exit 0
    ;;
esac

echo "$pid $name | VIP Feature"
echo "$p Thanks You For Buy VIP, Enjoy"
sleep 1
echo "$p WARNING : JANGAN REBOOT DEVICE, KARENA ID ANDROID AKAN BERUBAH DAN VIP MENJADI HANGUS!"
sleep 1
echo "$p NOTE : ANDA BISA MEMINTA UNTUK MEMASUKKAN ID ANDROID ANDA KE @lrzozz DAN MEMBAYAR 2K, KHUSUS YANG HP NYA TERPAKSA REBOOT!!!"
sleep 3
storm -x "$mycore" -fn "mycore" "$@"
