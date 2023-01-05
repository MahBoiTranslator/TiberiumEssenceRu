@echo off

: Сборка и копирование файлов локализации
call BuildWithoutMaps.bat
xcopy /y /c ..\Translation\TiberiumEssence2_Russian.big %USERPROFILE%\Documents\"Command & Conquer 3 Tiberium Wars"\Mods\TiberiumEssence2\TiberiumEssence2_Russian.big
xcopy /y /c ..\Translation\TiberiumEssence_2.0.skudef   %USERPROFILE%\Documents\"Command & Conquer 3 Tiberium Wars"\Mods\TiberiumEssence2\TiberiumEssence_2.0.skudef

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 3

: Запуск игры
@start %USERPROFILE%\Desktop\"Command and Conquer 3 Tiberium Wars.url"
