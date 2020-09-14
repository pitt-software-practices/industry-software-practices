
# test 1: the answer should be 4 ;)


2+2

# test 2: a graph should display inline

from random import random

import matplotlib.pyplot as plt


t = range(6)
y = [random() for _ in t]

fig = plt.figure(figsize=(7,7))
ax = fig.add_subplot(1, 1, 1)
ax.plot(t, y, zorder=2)
ax.set_xlabel('t [seconds]')
ax.set_ylabel('concentration [M]')

ax.grid(linestyle='-', color='0.7', zorder=0)
