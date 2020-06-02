#!/bin/bash
power=`echo - | awk "{printf \"%.1f\", \
$(( \
  $(cat /sys/class/power_supply/BAT0/current_now) * \
  $(cat /sys/class/power_supply/BAT0/voltage_now) \
)) / 1000000000000 }"`

echo '{"text":"'${power}'W","tooltip":"$tooltip","class":["$class","battery-power-consumption"]}'
