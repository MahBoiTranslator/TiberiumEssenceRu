@echo off

: Копирование карт из текущего репозитория в %appdata%
xcopy /h /y /c /r /s ..\Source\Maps\* %appdata%\"Command & Conquer 3 Tiberium Wars"\Maps\*
del /a:h %appdata%\"Command & Conquer 3 Tiberium Wars"\Maps\.git
del %appdata%\"Command & Conquer 3 Tiberium Wars"\Maps\*.str %appdata%\"Command & Conquer 3 Tiberium Wars"\Maps\*.md
