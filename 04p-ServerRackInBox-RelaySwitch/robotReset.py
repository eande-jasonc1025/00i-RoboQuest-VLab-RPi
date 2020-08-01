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
##jwc o def robotReset(number):
def robotReset(rpiNum_In, relaySwitchNum_In):
    print("")
    
    ##jwc o print("Turning Off robot {0}".format(number))
    print("Turning Off robot {0}".format(rpiNum_In))
    ##jwc o GPIO.output(relayPins[number-1], GPIO.LOW)
    GPIO.output(relayPins[relaySwitchNum_In-1], GPIO.LOW)
    
    print("Wait...")
    time.sleep(5)
    
    ##jwc o print("Turning On robot {0}".format(number))
    print("Turning On robot {0}".format(rpiNum_In))
    ##jwc o GPIO.output(relayPins[number-1], GPIO.HIGH)
    GPIO.output(relayPins[relaySwitchNum_In-1], GPIO.HIGH)
    


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
##jwc o print("*NOTE - The RPi's are NOT connected chronilogically, see below for specific relay mapping")
##jwc o print("RPi_1 = 1 , RPi_2 = 2, RPi_3 = 4, RPi_4 = 5, RPi_6 = 7, RPi_7 = 8")
print("    RPi_1 = 1 , RPi_2 = 2, RPi_3 = 3, RPi_4 = 4, RPi_6 = 6, RPi_7 = 7 (RPi_5 = RelaySwitchAdmin)")
print("    Quit = q")
print("")

while True:
    char = getch()
 
    if(char == "1"):
        ##jwc o robotReset(1)
        robotReset(1, 1)
        time.sleep(button_delay)
    
    #-------------------------------
    elif(char == "2"):
        ##jwc o robotReset(2)
        robotReset(2, 2)
        time.sleep(button_delay)
      
    #-------------------------------
    elif(char == "3"):
        ##jwc o robotReset(3)
        robotReset(3, 4)
        time.sleep(button_delay)
        
    #-------------------------------
    elif(char == "4"):
        ##jwc o robotReset(4)
        robotReset(4, 5)
        time.sleep(button_delay)

    #-------------------------------
    elif(char == "5"):
        ##jwc o robotReset(5)
        print("*** Sorry, RPi_5 Cannot be Reset. Not Conected to Relay Switch.")
        time.sleep(button_delay)

    #-------------------------------
    elif(char == "6"):
        ##jwc o robotReset(6)
        robotReset(6, 7)
        time.sleep(button_delay)
 
    #-------------------------------
    elif(char == "7"):
        ##jwc robotReset(7)
        robotReset(7, 8)
        time.sleep(button_delay)
 
    #-------------------------------
    elif(char == "8"):
        ##jwc o robotReset(8)
        print("*** Sorry, RPi_8 Cannot be Reset. No Such RPi_8.")
        time.sleep(button_delay)

  
        #print("Count: {0}".format(count), end='\r', flush=True)
        

    elif(char == "q"):
        print("")
        print("Quit")
        GPIO.cleanup()
        exit(0)


