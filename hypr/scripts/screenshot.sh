# Starting hyprpicker process to freeze screen.
hyprpicker -r -n -z &
hyprpicker_pid=$!

# Actual screenshot
grimblast --freeze copy area $@

# End the hyprpicker
kill "$hyprpicker_pid"

