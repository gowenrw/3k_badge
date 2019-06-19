# 3000_Society_Badge_K5

This directory contains the KiCad version 5.x project files for the 3000 Society Badge.

Here is the layout of the project directory:
* ./ - The root directory contains the main KiCad files for the project
  * <filename>.pro: project file. Holds parameters that apply to the entire project (schematic and PCB layout).
  * <filename>.sch: schematic file.
  * <filename>.kicad_pcb: the new PCB layout file.
  * <filename>.net: netlist in "Pcbnew" format
  * <filename>.bak: backup of schematic file.
  * <filename>.kicad_pcb-bak: backup of the new PCB layout file.
  * <filename>-cache.lib: a local cache copy of all the symbols used in the schematic
  * fp-lib-table: Footprint library list
  * sym-lib-table: Schematic library list
* ./lib_sh - This directory contains schematic library files
  * <filename>.lib: schematic symbols library file.
* ./lib_fp - This directory contains footprint module directories
  * <dirname>.pretty: footprint module directory
    * <filename>.mod: footprint module file
* ./3d_models - This directory contains footprint 3d model files
  * <filename>.wrl: VRML 3D model used in the 3D viewer to represent parts.
* ./gerber - This directory contains gerber formatted files for manufacturing
