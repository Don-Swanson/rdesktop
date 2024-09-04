# rdesktop

rdesktop is a remote desktop solution based on the LinuxServer.io Ubuntu Image, enhanced with additional tools specifically useful for 3D printing when I'm not at my computer.

## Features

- **Remote Desktop Access**: Provides a full-featured remote desktop environment.
- **3D Printing Tools**: Includes a suite of tools and utilities tailored for 3D printing enthusiasts and professionals.
- **LinuxServer.io Base**: Built on the reliable and secure LinuxServer.io Ubuntu Image.

## Included 3D Printing Tools

- **OpenSCAD**: A powerful open-source SCAD Tool.
- **PrusaSlicer**: A popular advanced slicer for 3D printing.

## Installation

To install and run rdesktop, follow these steps:

1. **Clone the Repository**:
	```sh
	git clone https://github.com/Don-Swanson/rdesktop.git
	cd rdesktop
	```

2. **Build the Docker Image**:
	```sh
	docker build -t rdesktop .
	```

3. **Run the Docker Container**:
	```sh
	docker run -d -p 3389:3389 rdesktop
	```

## Usage

Once the container is running, you can connect to the remote desktop environment using any RDP client.

## DockerCompose

You can also find a sample Docker Compose File in this repo.


## Acknowledgements

- [LinuxServer.io](https://www.linuxserver.io/) for the base Ubuntu image.
- The developers of PrusaSlicer and OpenSCAD for their amazing tools.
