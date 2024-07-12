source $FUNCTION
import axeron.prop
local core="https://fahrez256.github.io/Laxeron/shell/core.sh"
local vip="https://lrzozz.github.io/LunarBoost/vip/install.sh"
local id="$(settings get secure android_id)"
local check_id="$(storm https://lrzozz.github.io/LunarBoost/id_vip.txt)"
local trim_id="${id:0:6}"
local vip_version=$(echo "$check_id" | grep -q "$trim_id" && echo true || echo false)
if [ $vip_version = true ]; then
  storm -x "$vip" -fn "install.sh" "$@"
  exit 0
fi

case $1 in
  --info )
    echo "$name | Information"
    echo "ID: $trim_id"
    exit 0
    ;;
  --buyvip )
    echo "$name | Buy VIP"
    echo "VIP Price: \$1"
    echo "Opening Telegram..."
    sleep 2
    am start --activity-no-animation -a android.intent.action.VIEW -d https://t.me/lrzozzys > /dev/null 2>&1
    exit 0
    ;;
esac

echo "$name | Free Version"
echo "Need more features? buy vip \$1"
storm -x "$core" -fn "core" "$@"
