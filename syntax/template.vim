" Vim syntax file
" Language:    Arduino
" Maintainer:  Johannes Hoff <johannes@johanneshoff.com>
" Last Change: ${date}
" License:     VIM license (:help license, replace vim by arduino.vim)

" Syntax highlighting like in the Arduino IDE
" Automatically generated by the script available at
"    https://bitbucket.org/johannes/arduino-vim-syntax
" Using keywords from <arduino>/build/shared/lib/keywords.txt
" From version: ${arduino_version}

" Thanks to Rik, Erik Nomitch, Adam Obeng, Graeme Cross and Niall Parker
" for helpful feedback!

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start withs
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
endif

${rules}

hi def link arduinoType Type
hi def link arduinoConstant Constant
hi def link arduinoStdFunc Function
hi def link arduinoFunc Function
hi def link arduinoMethod Function
hi def link arduinoModule Identifier
