@echo off

REM create TSL's working folder
cd /d "C:\Users\%username%\Documents\My Games\Terraria"
if not exist "C:\Users\%username%\Documents\My Games\Terraria\TSLtemp" (
	md "C:\Users\%username%\Documents\My Games\Terraria\TSLtemp"
)

REM info
echo ̩������S/L�� V1.0
echo ��������������������������������������������
echo ������־:
echo V1���������һ���汾
echo ��������������������������������������������
echo ��������С����...
pause


:filesure
cls
cd Worlds
dir "%cd%" /b
echo (..)=�˳�������
set /p chosen=�����ļ���(֧��tab)
if chosen==.. exit
title ��ǰ�ļ�:%chosen%
cd ..

:loop
cls
echo ��ǰ�ļ�:%chosen%
echo S:�浵(Save)
echo L:����(Load)
echo E:�˳�(Exit)

set /p command=����:
if %command%==S (
	copy /y "%cd%\Worlds\%chosen%" "%cd%\TSLtemp\%chosen%"
	echo ���
	pause
	goto loop
)
if %command%==L (
	copy /y "%cd%\TSLtemp\%chosen%" "%cd%\Worlds\%chosen%"
	echo ���
	pause
	goto loop
)
if %command%==E (
	cls
	goto filesure
)
echo ��ѡ����һ�������ڵĴ���!
pause
goto loop