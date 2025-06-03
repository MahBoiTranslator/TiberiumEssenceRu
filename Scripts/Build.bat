@echo off

cd ..
: Сборка .big файла с переводом
mkdir Translation
start /wait "" Tools\MakeBig.exe -f -o:Translation\TiberiumEssence2_Russian.big Source\csf

: Копирование смежных файлов
copy Source\readme.txt                         Translation\readme.txt
copy Source\TiberiumEssence_2.0.skudef         Translation\TiberiumEssence_2.0.skudef
copy Source\TiberiumEssence2_WithoutModStr.big Translation\TiberiumEssence2_WithoutModStr.big

: Сборка карт
mkdir Translation\Maps
xcopy /h /y /c /r /s Source\Maps\* Translation\Maps\*
del Translation\Maps\*.md Translation\Maps\*.str
del /a:h Translation\Maps\.git
rmdir /s /q Translation\Maps\.github
