import Common

p = "/sys/class/backlight/gmux_backlight"
b = p ++ "/brightness"
m = p ++ "/max_brightness"

main = changeBl b m