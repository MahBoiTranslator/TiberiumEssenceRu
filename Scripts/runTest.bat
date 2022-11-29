@echo off

: Сборка и копирование файлов локализации
call BuildWithoutMaps.bat
xcopy /h /y /c /r /s ..\Translation\TibEss_v2.0_Russian.big %USERPROFILE%\Documents\"Command & Conquer 3 Tiberium Wars"\Mods\TiberiumEssence2\TibEss_v2.0_Russian.big

: Задержка необходима для того, чтобы файлы успели скопироваться
timeout /t 3

: Запуск игры
start C:\"Program Files (x86)"\Steam\steamapps\common\Command and Conquer 3 Tiberium Wars\cnc3.exe -ui
