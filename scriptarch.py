import os
from tkinter import *

master = Tk()

variable = StringVar(master)

#t = Entry(master, width= 25, text = ' ')     #features to be added
#t.pack()

l = Label(master, bg='white', width=50, text=' ')
l.pack()


master.title('Arch clean')
master.geometry('500x500')
OPTIONS = ["update", "info", "date"]

variable.set(OPTIONS[0])

def check():
    if (var1.get() == 1)&(var2.get()== 0):
        os.system('sudo pacman -Syu' 'Y')
    elif(var2.get()== 1)&(var1.get()==0):
        os.system('Sudo pacman -Rcns' 'Y')
    if (var1.get()==1)& (var2.get == 1):
        os.system('sudo pacman -Syu' 'Y')
        os.system('Sudo pacman -Rcns' 'Y')
    elif (var1.get()==0)&(var2.get()== 0):
        l.config(text='no action taken')
        

        

var1 = IntVar()
var2 = IntVar()
c1 = Checkbutton(master, text='Update',variable=var1, onvalue=1, offvalue=0,)
c1.pack()
c2 = Checkbutton(master, text='clean',variable=var2, onvalue=1, offvalue=0, )
c2.pack()

button = Button(master, text="send",command=check)
button.pack()



mainloop()

















