@echo off

cd ..
: Сборка .big файла с переводом
mkdir Translation
start Tools\MakeBig.exe -f -o:Translation\TiberiumEssence2_Russian.big Source\csf

: Копирование описания
copy Source\readme.txt                 Translation\readme.txt
copy Source\TiberiumEssence_2.0.skudef Translation\TiberiumEssence_2.0.skudef

: Сборка карт
mkdir Translation\Maps
xcopy /h /y /c /r /s Source\Maps\* Translation\Maps\*
del Translation\Maps\*.md Translation\Maps\*.str
del /a:h Translation\Maps\.git
rmdir /s /q Translation\Maps\.github
