#!/bin/bash

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

case "${PERCENTAGE}" in
  9[0-9]|100) ICON="􀛨"
  ;;
  [6-8][0-9]) ICON="􀺸"
  ;;
  [3-5][0-9]) ICON="􀺶"
  ;;
  [1-2][0-9]) ICON="􀛩"
  ;;
  *) ICON="􀛪"
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="􀢋"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
if [ "$PERCENTAGE" = "" ]; then
  sketchybar --set "$NAME" icon="$ICON" label.drawing=off
else
  sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"
fi
