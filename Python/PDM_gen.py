import numpy as np
import matplotlib.pyplot as plt

def pdm(x):
    n = len(x)
    y = np.zeros(n)
    error = np.zeros(n+1)    
    for i in range(n):
        y[i] = 1 if x[i] >= error[i] else 0
        error[i+1] = y[i] - x[i] + error[i]
    return y, error[0:n]

n = 2*48 + 1    #two periods
fclk = 48e3     #sample frequency (Hz)
t = np.arange(n) / fclk
f_sin = 1e3     # sine frequency (Hz)

x = 0.5 + 0.4 * np.sin(2*np.pi*f_sin*t)
y, error = pdm(x)

plt.plot(1e3*t, x, label='input signal')
plt.step(1e3*t, y, label='pdm signal',  linewidth=2.0)
plt.step(1e3*t, error, label='error')
plt.xlabel('Time (ms)')
plt.ylim(-0.05,1.05)
plt.legend()
plt.show()

