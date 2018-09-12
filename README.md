# Sample Code for Samsung ARTIK BoardProjects

This repository contains code for creating IoTivity and IoTivity-lite server on the Samsung ARTIK boards. There is currently just one sample, but it has been tested to run on the ARTIK 530s using both IoTivity and IoTivity-lite.

There is currently one sample project.
- OCFArtikEnviro - This project creates an OCF server that controls the LED on the Enviro pHat by using ARTIK Library.
- artiklight - This project creates an OCF server that controls the blue LED directly on the ARTIK 530s. It uses the binarySwith resource

# Artik information


You can see ARTIK SDK(API) on this page: https://developer.artik.io/documentation/api/index.html.
 
Other links:
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
      5. edit_input2.sh - edit the device description input file (project_name.json) if necessary.
      6. gen2.sh - generate the code, introspection file, PICS file, and onboarding file from the device description file.
      7. build2.sh - compile and link everything
      8. edit_code2.sh - edit the server source code if necessary.
      9. reset2.sh - reset the sever to RFOTM by copying a fresh onboarding file
      10. run2.sh - run the currently compiled server in the appropriate directory
  2. To test the project, you will need to run a client. Here are some options.
      1. Discover, onboard and control the server using OTGC
      2. Discover, onboard and control the server using DeviceSpy
      3. Test the server using CTT
