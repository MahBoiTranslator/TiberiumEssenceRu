@echo off

cd ..
: Сборка .big файла перевода
mkdir Translation
start Tools\MakeBig.exe -f -o:Translation\TibEss_v2.0_Russian.big Source\csf

: Сборка русификатора
copy Source\readme.txt                 Translation\readme.txt
copy Source\TiberiumEssence_2.0.skudef Translation\TiberiumEssence_2.0.skudef
cd Scripts
