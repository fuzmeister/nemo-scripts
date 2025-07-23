# nemo-scripts
Collection of action files and subsequent scripts for the Nemo file manager

There are currently two context menu actions available through this repository:
- **coverart.nemo_action** - Adds the selected image file as the front cover for all MP3 files in the current directory. Requires eyeD3.
- **cue_to_chd.nemo_action** - Creates a chd file from the selected cue file and subsequent bin files. Requires chdman.
- **lcase_files.nemo_action** - Bulk renames all files in the current directory to lowercase (including file extensions).

This repository mirrors the directory structure of your user's home directory. You should be able to clone or download the files directly to your home directory.

## Changelog

2025-07-23
* Added script and nemo menu action to handle bundling cue+bin files into the chd format using chdman.

2020-07-22
* Fixed issue requiring users provide an absolute path to their home directory in .nemo_action files

2020-07-21
* Initial commit of files
