# Sample Code for Samsung ARTIK BoardProjects

This repository contains code for creating IoTivity and IoTivity-lite server on the Samsung ARTIK boards.
Currently, code in this repository operate only Eagleye 530s board that use ARTIK(SAMSUNG IoT platform) 530s system-on-module. 

There are currently samples project.

IoTivity-FS
- OCFArtikEnviro - This project creates an OCF server that controls the LED on the Enviro pHat by using ARTIK Library.
- artiklight - This project creates an OCF server that controls the blue LED directly on the Eagleye 530s. 
  It uses the binarySwith resource
  
IoTivity-lite
- artik-example - This project creates an OCF server that controls the blue LED and read switch status on the Eagleye 530s.

# Artik information

You can see ARTIK SDK(API) on this page: https://developer.artik.io/documentation/api/index.html.

Other links:
- Description of Eagleye 530s : http://wiki.seeedstudio.com/Eagleye_530s/
- GPIO example code : https://developer.artik.io/documentation/api/gpio_test_2artik_gpio_test_8c-example.html
- ARTIK SDK example code on github : https://github.com/SamsungARTIK/artik-sdk-examples
- Eagleye 530s pin programming : http://wiki.seeedstudio.com/Eagleye_530s/#play-with-pin-programming


# Installation

NOTE: These instructions assume you are using the project scripts (e.g. gen2.sh, etc). These can be found in the Project-Scripts repo located here:

https://github.com/openconnectivity/Project-Scripts

To install all the ARTIK samples, just type the following command.

- curl https://openconnectivity.github.io/ARTIK-Code/install.sh | bash

This command will do a number of things:

  - Clone the ARTIK-Code repository (which includes all the sample code described above). Each sample subdirectory includes the following files:
  - Makefile: A Makefile description file that will manage the compiling and linking of the project.
  - <sample>.cpp: The C++ code for IoTivity that includes all the resources plus the code to interface to the ARTIK 530s.
  - <sample>.c: The C code for IoTivity-lite that includes all the resources plus the code to interface to the ARTIK 530s.

  # Setting the OCF Implementation to use

  - The following variables MUST be set to point to the directories related to the OCF implementation you want to use in order to run the convenience scripts described below.
    - OCFPATH - This is the absolute directory where the OCF implementation is installed and where all the convenience scripts are found. (This is typically /home/my_user_name/iot or /home/my_user_name/iot-lite)
    - OCFSUBPATH - This is just the final part of OCFPATH, but it is necessary as a way to get the set_implementaion.sh script to work correctly. (This is typically /iot or /iot-lite)
    - PATH - This is the normal search PATH, but it will have OCFPATH prepended to it so the scripts can be found.

  - source set_implementation.sh (/iot or /iot-lite) - This will switch the implementation of OCF to use (IoTivity or IoTivity-lite right now). It sets some environment variables that MUST be set for all of the scripts. IT IS CRITICAL to use the "source" command to run this script. That makes it work in the current bash context rather that a temporary one.

  # Building and Running Projects

  A number of convenience scripts have been written to make the development cycle easier.
  1. Run the following development cycle as needed
      1. create_project project_name - create a new project and name it anything you want.
      2. This isn't a script, but you need to "cd project_name" to run all the other scripts.
      3. Copy the setup.sh from the directory of the sample you want to install into the current project directory. (in the ARTIK-Code repository you just installed)
      4. ./setup.sh - This will load all the necessary stuff to build and run the sample project.
      5. edit_config.sh - Edit the project configuration file (project_name-config.json) if necessary. (e.g. to change the IoTivity version or target OS). NOTE: Temporarily, only the first entry in the configuration implementation and platform arrays is used.
      6. edit_input.sh - edit the device description input file (project_name.json) if necessary.
      7. gen.sh - generate the code, introspection file, PICS file, and onboarding file from the device description file.
      8. build.sh - compile and link everything
      9. edit_code.sh - edit the server source code if necessary.
      10. reset.sh - reset the sever to RFOTM by copying a fresh onboarding file
      11. run.sh - run the currently compiled server in the appropriate directory
  2. To test the project, you will need to run a client. Here are some options.
      1. Discover, onboard and control the server using OTGC
      2. Discover, onboard and control the server using DeviceSpy
      3. Test the server using CTT
      Links for download OTGC and DeviceSpy : https://github.com/openconnectivityfoundation/development-support/
      
  # Try to build 'artik-example' example
  
  1. Install the development environment
      1. Install all of this from the home directory: cd ~
      2. IoTivity-lite development: curl https://openconnectivity.github.io/IOTivity-Lite-setup/install.sh | bash
      3. Project scripts: curl https://openconnectivity.github.io/Project-Scripts/install.sh | bash 
      4. ARTIK 530s examples (answer “y” to all the prompts): curl https://openconnectivity.github.io/ARTIK-Code/install.sh | bash
      5. Make sure the PATH is set: reboot or source ~/.bashrc
  2. Build example
      1. Create a new OCF project (can be named anything, but we’ll use the following):
         - cd ~/workspace
         - create_project.sh artik-example
         - cd artik-example
      2. Typing command for using(copying) pre-built sample
         - cp ~/ARTIK-Code/IoTivity-lite/artik-example/setup.sh ./
         - sh setup.sh
      3. Build example(OCF server device) with Project-Scripts
         Program configuration file and device description file already exist(Step 1-4, 2-2), so you don't have to use(type) edit_config.sh and edit_input.sh. (If you type this command, you can see the code.)
         - Automatically generate the code, introspection file and security files: gen.sh
         - Build the project executable: build.sh
         - Set the security to “ready for owner transfer method” (RFOTM): reset.sh
         - Run the server code on the ARTIK 530s: run.sh
      4. Run OTGC and control the hardware light/switch on the ARTIK 530s
      
