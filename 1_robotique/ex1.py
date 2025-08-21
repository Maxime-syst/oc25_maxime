# Imports go at the top
from microbit import *
import music



# Code in a 'while True:' loop repeats forever
while True:
    if button_a.is_pressed():
            display.scroll('A')
        
    if button_b.is_pressed():
        display.scroll('B')

    if accelerometer.was_gesture('shake'):
        music.play(['e','e','e','c'])

    
        
