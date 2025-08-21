
#Maxime Genoux
#21 août  2025
#introduction au micro:bit
# Code démonstrateur avec 10 programmes
# bouton A: incrémenter le programme
# bouton B: executer





# Imports go at the top
from microbit import *
import music
import speech

p=0
# Code in a 'while True:' loop repeats forever
while True:
    display.show(p)
    if button_a.is_pressed():
        p=p+1
        if p==10:
            p=0
        
    if button_b.is_pressed():
        if p==0:
            display.show(Image.HEART)
            sleep(1000)
        elif p==1:
            music.play(['e4','e4','e4','c4:3','g4:2','e4:2','c4:4','g4:2','e4:2','b4','b4','b4','c5','g4:2','e4:2','c4','g4:2','e4:2'])
        elif p==2:
            display.scroll('WOAW')
        elif p==3:
            display.show('Yes')
        elif p==4:
            display.set_pixel(0,0,9)
        elif p==5:
            speech.say('Hello, world. How are you?')
        elif p==6:
            display.scroll(temperature())
            speech.say('temperature()')
       
       
            
       

    
    
        
