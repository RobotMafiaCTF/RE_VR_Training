There are 2 paths to take for setting up your development machine. Yuo can do it yourself using jsut the list of requirements found below, or you can follow the detailed instructions below!

Requirements:

	Virtualization Software: VMware, Virtual Box
	Ubuntu 20.04 Virtual Machine
	Software:
		Java 11
		Ghidra
		Text Editor of your choice- Vim, Sublime, Notepad++
		python3
		pwntools
		GDB with pwndbg plugin
		VPN (optional but recommended)
		pycharm community (optional but recommended)
	
	
Detailed Instructions for Dev VM Setup for X86 portion of the course:

	Download Ubuntu 20.04.3 LTS iso (may take some time to download):
		Go to https://ubuntu.com/download/desktop
	Download and install a Virtualization software:
		- vmware player/workstation pro/fusion
		- virtual box
	Set up dev VM. For the sake of these instructions, Im assuming you are using a windows machine and vmware:
		- File -> New Virtual Machine
		- Install from installer disc image file and navigate to where you downloaded you Ubuntu ISO
		- Personalize your machine and name it
			- NOTE- do not choose any machine names or usernames containing information you wouldnt want to be attributed to you... aka your real name
		- Choose disk size
			- 20GB, the default, should be enough for this training.
			- I chose to split my disk into multiple files.
		- I then selected "finish" and went with the default hardware settings. You can modify this however you see fit.
		- Walk through the Ubuntu setup normally once you power the machine on!
	Once the VM is successfully powered on and set up, install software:
		- misc packages via apt
			- sudo apt install make gcc python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential nasm binutils tmux checksec
			- python3 -m pip install --upgrade pip
			- python3 -m pip install --upgrade pwntools
		- install pwndbg- gdb plugin
			- git clone https://github.com/pwndbg/pwndbg
			- cd pwndbg
			- ./setup.sh
		- ghidra
			- download the ghidra zip file from github: https://github.com/NationalSecurityAgency/ghidra/releases
			- unzip ghidra to a location of your choice
			- change ghidra to be executable (mine was already executable, but just in case!)
				- chmod +x ./ghidraRun
			- install java 11
				- sudo apt install default-jre openjdk-11-jdk openjdk-11-jre
				- Verify that you have install java
					- java -version
				- Next Install OpenJDK 11 JDK and the OpenJDK 11 JRE
					- sudo apt install openjdk-11-jdk openjdk-11-jre
				- sudo apt install jre TODO
			- open a terminal and navigate to where you unzipped ghidra
			- start ghidra
				- ./ghidraRun
		- text editor of your choice
			- ```vim```- sudo apt install vim 
			- ```notepad++```- sudo snap install notepad-plus-plus
			- ```sublime```
			- other
		- vpn of your choice (optional but recommended)
			- mullvad vpn- https://mullvad.net/
			- express vpn- https://www.expressvpn.com/
			- PIA- https://www.privateinternetaccess.com/
		- pycharm community (optional- I think it is pretty)
	
