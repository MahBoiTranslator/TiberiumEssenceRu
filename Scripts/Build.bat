@echo off

cd ..
: Сборка .big файла с переводом
mkdir Translation
start Tools\MakeBig.exe -f -o:Translation\TibEss_v2.0_Russian.big Source\csf

: Копирование описания
copy Source\readme.txt Translation\readme.txt

: Сборка карт
mkdir Translation\Maps
xcopy /h /y /c /r /s Source\Maps\* Translation\Maps\*
del Translation\Maps\*.md Translation\Maps\*.str
del /a:h Translation\Maps\.git
