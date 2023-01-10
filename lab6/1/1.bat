wmic os get caption, version > version.txt
wmic computersystem get totalphysicalmemory > totalmemory.txt
wmic os get freephysicalmemory >> freeemory.txt
wmic logicaldisk list brief > disks.txt
