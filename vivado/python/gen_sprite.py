import numpy as np 

divisor = 1
size_x =  800//divisor
size_y = 1280//divisor

image = np.zeros((size_x, size_y, 3), dtype=np.uint8)
image[:,:, 1] = 255
center_x, center_y = (size_x//2)-1, (size_y//2)-1
for i in range(image.shape[0]):
    for j in range(image.shape[1]):
        if (i-center_x)**2+(j-center_y)**2 <= (15/divisor)**2:
            image[i,j,:] = [255,0,0]



sub_array = image[center_x-15: center_x+16, center_y-15:center_y+16, 0]
sprite = ""
for i in range(31):
    for j in range(31):
        val = 1 if sub_array[i,j] == 255 else 0
        sprite += f"{val} "
    sprite += '\n'

with open("../verilog_srcs/ballsprite.txt", 'w') as f:
    f.write(sprite)

from PIL import Image
from matplotlib import cm
# image = image.transpose(1,0,2)
im = Image.fromarray(image)
im.save('game.png')


