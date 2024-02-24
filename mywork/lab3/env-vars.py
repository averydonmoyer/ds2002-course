#!/Library/Frameworks/Python.framework/Versions/3.12/bin/python3

import os 

os.environ["FAV_NUMBER"] = input('What is your favorite number? ') 
os.environ["NAME"] = input('What is your name? ') 
os.environ["FAV_SONG"] = input('What is your favorite song? ') 

FAV_NUMBER_ENV = os.getenv("FAV_NUMBER") 
NAME_ENV = os.getenv("NAME") 
FAV_SONG_ENV = os.getenv("FAV_SONG") 

print(FAV_NUMBER_ENV) 
print(NAME_ENV) 
print(FAV_SONG_ENV) 

