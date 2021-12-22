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
	
	
Detailed Instructions for Dev VM Setup (before January):

	Download Ubuntu 20.04.3 LTS iso (may take some time to download):
		Go to https://ubuntu.com/download/desktop
	Install a Virtualization software: (TODO links)
		- vmware pro (TODO can we get licenses? can we use work license on home machine?)
		- vmware player
		- virtual box (it sucks)
	Set up dev VM in vmware:
		- TODO instructions
		- File -> New Virtual Machine
		- Feel free to choose typical installation and easy install. 
		 	- NOTE- do not choose any machine names or usernames containing your acutal name or any company related usernames
			- The default settings should work fine.
			- Walk through the Ubuntu setup. 
				- Choose do not send statistics.
	Once the VM is successfully powered on, install software:
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
		- docker
		- text editor of your choice
			- sudo apt install vim 
			- sudo snap install notepad-plus-plus
			- sublime
		- vpn of your choice (optional but recommended)
			- mullvad vpn
			- express vpn
			- some 3 letter acronym one 
		- pycharm community (optional- I think it is pretty)
	