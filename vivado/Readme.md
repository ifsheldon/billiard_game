## This Folder contains the hardware design on the game

For now it displays a ball whose RBG color can be adjusted using switches `R = sw[15-12]`, `G = [9-6]` and `B = [3:0]` on the screen which can be moved around using the buttons Up, Down, Left and Rigt.

### To create the project, synthsize and generate bitstream run (Make sure the vivado is in the path):
```bash
make all
```
The bistream will be generated and copied at `"./game.bit"`. The ballsprite is generated from the python code given under  `./python/`


### To have a look inside the project

```bash
make open_proj
````

Click `Open Block Design` in the left panel which is actaully the high level view of the connection of the verilog files added.

### To generate the ballsprite

```bash
cd python
pip3 install matplotlib
python3 gen_sprite.py
```

### When using vivado locally, you can program the deivce using

Make sure the board is on

```bash
make prog_device
````

### To clean the generated files
```bash
make clean
make clean_all # To delete the proeject folder as well
````

