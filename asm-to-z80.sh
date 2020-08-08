#!/bin/sh
#
# Translates Z80 Assembly to format
# SLR Z80ASM can understand
#
sed '
	s/\.\(EQU\|ORG\|DB\|DW\|DS\|END\)/\1/;
	s/\.\(equ\|org\|db\|dw\|ds\|end\)/\1/;

	s/$\([A-Fa-f0-9]\+\)/00\1h/g;
	s/%\([01]\+\)/\1b/g;

	s/\.\(IF\|ELSE\|ENDIF\)/\1/;
	s/#\(IF\|ELSE\|ENDIF\)/\1/;
	s/#DEFINE \([[:alnum:]]\+\)\s*/\1:	EQU	/;

' Tune.asm >TUNE.Z80
