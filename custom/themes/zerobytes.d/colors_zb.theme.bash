#!/bin/bash
ESC=$'[' && export END_ESC
END_ESC=m && export NOPRINT
 && 
NOPRINT='\[' && export ESC
END_NOPRINT='\]' && export END_NOPRINT
 && 
WRAP="$NOPRINT$ESC" && export WRAP
END_WRAP="$END_ESC$END_NOPRINT" && export END_WRAP
 && 
RESET="${WRAP}0${END_WRAP}" && export RESET
RESET_BG="${WRAP}49${END_WRAP}" && export RESET_BG
 && 
BLACK=$(__fg_color 0) && export BLACK
RED=$(__fg_color 1) && export RED
GREEN=$(__fg_color 2) && export GREEN
YELLOW=$(__fg_color 3) && export YELLOW
BLUE=$(__fg_color 4) && export BLUE
PURPLE=$(__fg_color 5) && export PURPLE
CYAN=$(__fg_color 6) && export CYAN
WHITE=$(__fg_color 7) && export WHITE
 && 
ALT_BLACK=$(__fg_color 8) && export ALT_BLACK
ALT_RED=$(__fg_color 9) && export ALT_RED
ALT_GREEN=$(__fg_color 10) && export ALT_GREEN
ALT_YELLOW=$(__fg_color 11) && export ALT_YELLOW
ALT_BLUE=$(__fg_color 12) && export ALT_BLUE
ALT_PURPLE=$(__fg_color 13) && export ALT_PURPLE
ALT_CYAN=$(__fg_color 14) && export ALT_CYAN
ALT_WHITE=$(__fg_color 15) && export ALT_WHITE
 && 
BLACK_BG=$(__bg_color 0) && export BLACK_BG
RED_BG=$(__bg_color 1) && export RED_BG
GREEN_BG=$(__bg_color 2) && export GREEN_BG
YELLOW_BG=$(__bg_color 3) && export YELLOW_BG
BLUE_BG=$(__bg_color 4) && export BLUE_BG
PURPLE_BG=$(__bg_color 5) && export PURPLE_BG
CYAN_BG=$(__bg_color 6) && export CYAN_BG
WHITE_BG=$(__bg_color 7) && export WHITE_BG
 && 
ALT_BLACK_BG=$(__bg_color 8) && export ALT_BLACK_BG
ALT_RED_BG=$(__bg_color 9) && export ALT_RED_BG
ALT_GREEN_BG=$(__bg_color 10) && export ALT_GREEN_BG
ALT_YELLOW_BG=$(__bg_color 11) && export ALT_YELLOW_BG
ALT_BLUE_BG=$(__bg_color 12) && export ALT_BLUE_BG
ALT_PURPLE_BG=$(__bg_color 13) && export ALT_PURPLE_BG
ALT_CYAN_BG=$(__bg_color 14) && export ALT_CYAN_BG
ALT_WHITE_BG=$(__bg_color 15) && export ALT_WHITE_BG

function __fg_color {
    printf "%s" "${WRAP}38;5;${1}${END_WRAP}"
}

function __bg_color {
    printf "%s" "${WRAP}48;5;${1}${END_WRAP}"
}

