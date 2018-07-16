
Debian
====================
This directory contains files used to package confederatestatesofamericad/confederatestatesofamerica-qt
for Debian-based Linux systems. If you compile confederatestatesofamericad/confederatestatesofamerica-qt yourself, there are some useful files here.

## confederatestatesofamerica: URI support ##


confederatestatesofamerica-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install confederatestatesofamerica-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your confederatestatesofamerica-qt binary to `/usr/bin`
and the `../../share/pixmaps/confederatestatesofamerica128.png` to `/usr/share/pixmaps`

confederatestatesofamerica-qt.protocol (KDE)

