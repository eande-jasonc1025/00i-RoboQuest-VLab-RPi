import threading
import time, sys, termios, tty, os
import RPi.GPIO as GPIO

relayPins = [11,13,15,19,21,23,29,31]


button_delay = 1


#Function for checking what key is pressed
def getch():
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(sys.stdin.fileno())
        ch = sys.stdin.read(1)
 
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    return ch

#---------------------------------------
#Turns on
def robotReset(number):
    print("")
    print("Turning Off robot {0}".format(number))
    GPIO.output(relayPins[number-1], GPIO.LOW)
    print("Wait...")
    time.sleep(5)
    print("Turning On robot {0}".format(number))
    GPIO.output(relayPins[number-1], GPIO.HIGH)
    


#setup GPIO 
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)
for i in range(8):
    GPIO.setup(relayPins[i], GPIO.OUT)
    GPIO.output(relayPins[i], GPIO.HIGH)
 


print("========   Raspberry Pi RoboQuest Relay Resetter   ========")
print(" Relays 1-8 are connected to the following pins :11,13,15,19,21,23,29,31")
print(" Resetting a RPi turns it off for 5 seconds, and then back on")
print(" Commands:")
print(" 1,2,3,4,5,6,7,8  Resets one of the RPi's")
print("*NOTE - The RPi's are NOT connected chronilogically, see below for specific relay mapping")
print("RPi_1 = 1 , RPi_2 = 2, RPi_3 = 4, RPi_4 = 5, RPi_6 = 7, RPi_7 = 8")
print(" X Exit")

while True:
    char = getch()
 
    if(char == "1"):
        robotReset(1)
        time.sleep(button_delay)
    
    #-------------------------------
    elif(char == "2"):
        robotReset(2)
        time.sleep(button_delay)
      
    #-------------------------------
    elif(char == "3"):
        robotReset(3)
        time.sleep(button_delay)
        
    #-------------------------------
    elif(char == "4"):
        robotReset(4)
        time.sleep(button_delay)

    #-------------------------------
    elif(char == "5"):
        robotReset(5)
        time.sleep(button_delay)

    #-------------------------------
    elif(char == "6"):
        robotReset(6)
        time.sleep(button_delay)
 
    #-------------------------------
    elif(char == "7"):
        robotReset(7)
        time.sleep(button_delay)
 
    #-------------------------------
    elif(char == "8"):
        robotReset(8)
        time.sleep(button_delay)

  
        #print("Count: {0}".format(count), end='\r', flush=True)
        

    elif(char == "x"):
        print("")
        print("Exit")
        GPIO.cleanup()
        exit(0)


