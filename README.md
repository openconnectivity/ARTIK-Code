# Sample Code for Samsung ARTIK BoardProjects

This repository contains code for creating IoTivity and IoTivity-lite server on the Samsung ARTIK boards. There is currently just one sample, but it has been tested to run on the ARTIK 530s using both IoTivity and IoTivity-lite.

There is currently one sample project.
- artiklight - This project creates an OCF server that controls the blue LED directly on the ARTIK 530s. It uses the binarySwith resource

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

# Building and Running the samples

A number of convenience scripts have been written to make the development cycle easier.
1. Run the following development cycle as needed
    1. create_project project_name - create a new project and name it anything you want.
    2. This isn't a script, but you need to "cd project_name" to run all the other scripts.
    3. Copy the setup.sh from the Emulator-Code/emulator/dimlight/ directory to the current project directory
    4. ./setup.sh - This will load all the necessary stuff to build and run the sample emulator project.
    5. edit_input2.sh - edit the device description input file (<project name>.json) if necessary.
    6. gen2.sh - generate the code, introspection file, PICS file, and onboarding file from the device description file.
    7. build2.sh - compile and link everything
    8. edit_code2.sh - edit the server source code if necessary.
    9. reset2.sh - reset the sever to RFOTM by copying a fresh onboarding file
    10. run2.sh - run the currently compiled server in the appropriate directory
2. To test the project, you will need to run a client. Here are some options.
    1. Discover, onboard and control the server using OTGC
    2. Discover, onboard and control the server using DeviceSpy
    3. Test the server using CTT
