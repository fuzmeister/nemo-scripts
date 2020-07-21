# nemo-scripts
Collection of action files and subsequent scripts for Nemo file manager

There are currently two context menu actions available through this repository:
- coverart.nemo_action - Adds the selected image file as the front cover for all MP3 files in the current directory.
- lcase_files.nemo_action - Bulk renames all files in the current directory to lowercase

This repository mirrors the directory structure of your user's home directory. You should be able to clone or download the files to your home directory.

Apparently, using tilde does not work and the .nemo_action files will need to be modified to replace instances of ~ with the absolute path of your home directory (E.G. /home/fuzmeister/ replaces ~/)
