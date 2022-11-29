@echo off

: Сборка и копирование файлов локализации
@call BuildWithoutMaps.bat
xcopy /h /y /c /r /s ..\Translation\TibEss_v2.0_Russian.big    %USERPROFILE%\Documents\"Command & Conquer 3 Tiberium Wars"\Mods\TiberiumEssence2\TibEss_v2.0_Russian.big
xcopy /h /y /c /r /s ..\Translation\TiberiumEssence_2.0.skudef %USERPROFILE%\Documents\"Command & Conquer 3 Tiberium Wars"\Mods\TiberiumEssence2\TiberiumEssence_2.0.skudef
@call CopyMapsToAppdata.bat

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 3

: Запуск игры
@start %USERPROFILE%\Documents\"Command & Conquer 3 Tiberium Wars"\Mods\GenEvo\GenEvoLauncher.exe
