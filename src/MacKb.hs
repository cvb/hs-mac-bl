import Common

p = "/sys/devices/platform/applesmc.768/leds/smc::kbd_backlight"
b = p ++ "/brightness"
m = p ++ "/max_brightness"

main = changeBl b m