# play-tune
Tune Player for CP/M (AY-3-8910/YM2149)

Simple PT2/PT3/MYM music player based on "Tune" application from RomWBW

## Requirements

* CP/M 2.2 or compatible operating system
* Z80 CPU witch 7.3MHz clock (typical for RC2014 machines)
* 64KB RAM

## Credits

Tune Player for CP/M uses code from 
https://github.com/wwarthen/RomWBW/blob/master/Source/Apps/Tune/Tune.asm

* Wayne Warthen -- RomWBW Tune Player 
* S.V.Bulba -- PTxPlayer 
* Marq/Lieves!Tuore -- MYMPlay 


## Changes from RomWBW "Tune"

The original program is heavily dependent on RomWBW's HBIOS and hardware auto-detection, making it completly non-working on plain CP/M hardware.

* Code semi-automatically translated to dialect understood by SLR Assembler (No crosscompiler needed).
* Removal of dependencies on RomWBW (HBIOS calls -- including hardware autodetection and Z180 code).
* It's smaller
