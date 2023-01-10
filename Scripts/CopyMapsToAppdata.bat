@echo off

: Копирование карт из текущего репозитория в %appdata%
xcopy /h /y /c /r /s ..\Source\Maps\[TE]* %appdata%\"Command & Conquer 3 Tiberium Wars"\Maps\[TE]*
