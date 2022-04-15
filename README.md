# ECE532-video-security-system

## Project Description
This is a video security system based on accelerator hardware. It uses a video camera to capture a live video stream outside of the home and displays the video onto a monitor in crisp HD resolution. Its processing power comes from a FPGA powered by a MicroBlaze core with custom logic for motion detection. Although not integrated within this system, we also implement email sending functonality to simulate warning the homeowner once motion is detected in front of their home.

## Instructions on How to Use
### Required Materials
- Nexys Video Board
- Nexys DDR Board
- HDMI Video Camera
- Display Monitor

## Repository Structure
The repository is organized as follows:

docs - Project documentation folder containing the mid-project presentation and the final report.

	↪ ECE532 Group 7 Report.pdf - This is the final report
  
src - Source files for the project.

	↪ Nexys-Video-HDMI - Main project built from the HDMI demo

		↪ /proj/HDMI.xpr - This is the main Vivado project file required to launch the final project that contains the modified HDMI demo.

	↪ ip_repo - This is the source folder containing the IP files.

		↪ motion_detection_1.0 - This is the folder containing the component.xml file of the motion detection IP.

	↪ managed_ip_project - This folder contains managed_ip_project.xpr where we can edit and repackage the motion detection IP.
	
	↪networking/demo - This is the source folder containing the networking components
	
		↪email_sending_functionality.py - Within the folder, this is the Python script for the emailing functionality

## Authors
This project was developed by Liza Zoubakina, Moeen Ahmed, and Ishraq Quayyum for their ECE532 Project.

## Acknowledgements
The authors would like to thank their TA Mo for his feedback and support.

