#! /bin/python

import os 

os.system("tput clear tput setaf 4")

print("\t\t\t The Kiddies Macchanger ")

print("\n\n\n\t\t\t 1. Set a Random Mac Address.")
print("\n\t\t\t 2.Set a Specific Mac Address.")
print("\n\t\t\t 3.Exit")

op=int(input("\n\n\n\t\t\tEnter Your Choice:"))

if (op==1):
	os.system("tput setaf 3")
	interface = raw_input("Enter the Interface on which you want to chane mac add:")
	os.system("ifconfig " +interface + "  down")
	os.system("ifconfig "+ interface +"   hw ether 9f:36:ee:f1:6e:2e")
	os.system("ifconfig "+ interface +"   up")
	
elif (op==2):
	os.system("tput setaf 2")
	interface = raw_input("Enter the Interface on which you want to chane mac add:")
	mac = raw_input("\nEnter the New Macaddress:")
	os.system("ifconfig " +interface +" down")
	os.system("ifconfig "+ interface +" hw ether " + mac)
	os.system("ifconfig "+ interface +" up")
	
	
elif (op==3):
    exit()
	
