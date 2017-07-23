@echo off

REM create TSL's working folder
cd /d "C:\Users\%username%\Documents\My Games\Terraria"
if not exist "C:\Users\%username%\Documents\My Games\Terraria\TSLtemp" (
	md "C:\Users\%username%\Documents\My Games\Terraria\TSLtemp"
)

REM info
echo 泰拉瑞亚S/L大法 V1.1
echo ——————————————————————
echo 更新日志:
echo V1.0：本软件第一个版本
echo V1.1：修复无法退出bug
echo ——————————————————————
echo 很垃圾的小玩意...
pause


:filesure
cls
cd Worlds
dir "%cd%" /b
echo (..)=退出本程序
set /p chosen=输入文件名(支持tab)
if %chosen%==.. exit
title 当前文件:%chosen%
cd ..

:loop
cls
echo 当前文件:%chosen%
echo S:存档(Save)
echo L:读档(Load)
echo E:退出(Exit)

set /p command=操作:
if %command%==S (
	copy /y "%cd%\Worlds\%chosen%" "%cd%\TSLtemp\%chosen%"
	echo 完成
	pause
	goto loop
)
if %command%==L (
	copy /y "%cd%\TSLtemp\%chosen%" "%cd%\Worlds\%chosen%"
	echo 完成
	pause
	goto loop
)
if %command%==E (
	cls
	goto filesure
)
echo 你选择了一个不存在的代号!
pause
goto loop
