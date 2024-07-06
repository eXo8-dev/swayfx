#!/bin/bash
mkdir my_config
mv swayfx/my_config/* my_config/

mkdir .config/waybar/
mv my_config/waybar/* .config/waybar/

mkdir .config/neofetch/
mv my_config/neofetch/* .config/neofetch/