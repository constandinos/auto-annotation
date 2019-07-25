# Automate the process of annotation
 
### Inspired and based on
* **https://github.com/gplast/DroNet**
* **https://github.com/AlexeyAB/darknet**

### Software Requirements
A Linux (Ubuntu 18.04) build environment needs these components:
* [`OpenCV 3.4`](https://docs.opencv.org/3.4.2/d7/d9f/tutorial_linux_install.html) or higher
* [`GNU Compiler Collection (GCC) 3.4`](https://linuxconfig.org/how-to-install-gcc-the-c-compiler-on-ubuntu-18-04-bionic-beaver-linux) or higher
* [`CMake 2.8`](https://cmake.org/install/) or higher
* [`Python 3.6`](https://www.python.org/downloads/) or higher

### Clone Repository
```bash
cd ~
git clone https://github.com/constandinos/auto-annotation.git
```

### Install
```bash
cd DroNet/
make -j
cd ../darknet/
make -j
cd ..
```

### Run DroNet
```bash
./runAll.sh DroNet_car.cfg Car_Crossroad.mp4
```

### Run DroNetV3
```bash
./runAll.sh DroNetV3_car.cfg Car_Parking.mov
```

#### Now you can find images and annotation files in the folder images
