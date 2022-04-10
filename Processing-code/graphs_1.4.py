import matplotlib.pyplot as plt
import numpy as np
from math import *
t=np.linspace(0,2*pi,100)
def x1_f(t):
    return np.cos(4*pi*t)
def x2_f(t):
    return np.sin(4*t)
def x11_f(t):
    return np.cos(4*pi*t)+2*np.cos(4*pi*(t-1/3))
def x22_f(t):
    return np.sin(4*t)+2*np.sin(4*(t-1/3))
def x12_f(t):
    return np.cos(4+pi*t)+np.sin(4*t)

plt.figure(figsize=(20,10))

#1st Signal
plt.subplot(2,3,1)
plt.plot(t,x1_f(t),linewidth=1.0)
plt.title("x1 Signal:")
#2nd Signal
plt.subplot(2,3,2)
plt.plot(t,x11_f(t),color='red',linewidth=1.0)
plt.title("x11 Signal:")
#3rd Signal
plt.subplot(2,3,3)
plt.plot(t,x2_f(t),color='yellow',linewidth=1.0)
plt.title("x2 Signal:")
#4th Signal
plt.subplot(2,3,4)
plt.plot(t,x22_f(t),color='green',linewidth=1.0)
plt.title("x22 Signal:")
#5th Signal
plt.subplot(2,3,5)
plt.plot(t,x12_f(t),color='black',linewidth=1.0)
plt.title("x12 Signal:")
plt.show()


