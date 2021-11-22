import numpy as np 

divisor = 1
size_x =  800//divisor
size_y = 1280//divisor

boundary = [0, 0, 0]
pocket = [150, 75, 0]

image = np.zeros((size_x, size_y, 3), dtype=np.uint8)
image[:,:, 1] = 255
# center_x, center_y = (size_x//2)-1, (size_y//2)-1
for i in range(image.shape[0]):
    for j in range(image.shape[1]):
        

        # upper pockets
        if (i-20)**2+(j-20)**2 <= (20/divisor)**2:
            image[i,j,:] = pocket
        
        if (i-15)**2+(j-640)**2 <= (20/divisor)**2:
            image[i,j,:] = pocket
        
        if (i-20)**2+(j-1280+20)**2 <= (20/divisor)**2:
            image[i,j,:] = pocket    
        
        # lower pockets
        if (i-799+20)**2+(j-20)**2 <= (20/divisor)**2:
            image[i,j,:] = pocket
        if (i-799+15)**2+(j-640)**2 <= (20/divisor)**2:
            image[i,j,:] = pocket
        if (i-799+20)**2+(j-1280+20)**2 <= (20/divisor)**2:
            image[i,j,:] = pocket    
        
        
        # boundary
        if i < 10 or i > 799-10 or j < 10 or j > 1279-10:
            image[i,j,:] = boundary

        # if (i-0)**2+(j-0)**2 <= (15/divisor)**2:
        #     image[i,j,:] = [0, 0, 0]
        if (i-50)**2+(j-50)**2 <= (15/divisor)**2:
            image[i,j,:] = [255, 255, 255]
        # if (i-400)**2+(j-870)**2 <= (15/divisor)**2:
        #     image[i,j,:] = [255, 0, 0]
        # if (i-400-15)**2+(j-870-27)**2 <= (15/divisor)**2:
        #     image[i,j,:] = [255, 0, 0]
        # if (i-400+15)**2+(j-870-27)**2 <= (15/divisor)**2:
        #     image[i,j,:] = [255, 0, 0]
        # if (i-400)**2+(j-870-27-27)**2 <= (15/divisor)**2:
        #     image[i,j,:] = [255, 0, 0]
        # if (i-400-30)**2+(j-870-27-27)**2 <= (15/divisor)**2:
        #     image[i,j,:] = [255, 0, 0]
        # if (i-400+30)**2+(j-870-27-27)**2 <= (15/divisor)**2:
        #     image[i,j,:] = [255, 0, 0]   

# sub_array = image[1:41, 1:41, 0]
# sprite = ""
# for i in range(39):
#     for j in range(39):
#         val = 1 if sub_array[i,j] == 150 else 0
#         sprite += f"{val} "
#     sprite += '\n'

# with open("../verilog_srcs/pocketsprite.txt", 'w') as f:
#     f.write(sprite)

from PIL import Image
from matplotlib import cm
# image = image.transpose(1,0,2)
im = Image.fromarray(image)
im.save('game.png')


