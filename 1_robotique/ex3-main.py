# Imports go at the top
from microbit import *
import neopixel


# Code in a 'while True:' loop repeats forever
while True:
    np = neopixel.NeoPixel(pin8, 60)
    if button_a.was_pressed():
        np = neopixel.NeoPixel(pin8, 60)
        np[1] = (63, 0, 0)
        np[2] = (0,63,0)
        np[3] = (0,0,63)
        np.show()
    if button_b.was_pressed():
        np = neopixel.NeoPixel(pin8, 60)
        for pixel_id in range(len(np)):
            np[pixel_id] = (50, 0, 50)
            np.show()
            sleep(10)
