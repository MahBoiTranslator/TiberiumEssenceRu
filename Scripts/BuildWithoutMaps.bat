@echo off

cd ..
: Сборка .big файла перевода
mkdir Translation
start /wait "" Tools\MakeBig.exe -f -o:Translation\TiberiumEssence2_Russian.big Source\csf

: Сборка русификатора
copy Source\readme.txt                 Translation\readme.txt
copy Source\TiberiumEssence_2.0.skudef Translation\TiberiumEssence_2.0.skudef
cd Scripts
