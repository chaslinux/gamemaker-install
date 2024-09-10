# gamemaker-install
This is a script that installs the required libraries, and makes the proper directories for the Linux beta download of GameMaker Studio 2 on
Ubuntu 24.04. 

NOTE: This script does not download the GameMaker Debian package, after the script download the package from:
and install with sudo dpkg -i GameMaker-Beta-2024.800.0.618.deb (where GameMaker-Beta-2024.800.0.618.deb is 
whatever the current debian package is called.)

*** Ubuntu 22.04 has issues with the most current beta: GameMaker-Beta-2024.800.0.618.deb that need to be resolved manually. While this script 
will do some of the work, you'll need to install libvorbis-dev, uninstall ffmpeg, and manually install ffmpeg with ./configure --enable-libvorbis
Thanks to @gnysek from the GameMaker community for this ***
