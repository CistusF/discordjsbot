@echo off
setlocal

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:ST
set /p YN=NODE.JS�� ��ġ �Ǿ��ֳ���? (Y/N)

if /i "%YN%" == "y" goto OK
if /i "%YN%" == "n" goto NONE

goto ST
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:OK
goto LOOP

:NONE
start https://discordapp.com/developers/applications/
cls
echo ���� �߰��� ���� ��ū�� ���� �ؼ� APP.JS���� �����ϼ���!
pause
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:LOOP
set /p YN=NODE.JS�� ��ġ �Ǿ��ֳ���? (Y/N)

if /i "%YN%" == "y" goto YES
if /i "%YN%" == "n" goto NO

goto LOOP
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:YES
goto A1

:NO
start https://nodejs.org/dist/v10.14.1/node-v10.14.1-x64.msi
cls
echo node.js ��ġ�⸦ ��ġ���Դϴ�.
echo node.js �� ��ġ�� �ٽ� �������ּ���!
pause
goto QUIT




::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:A1
set /p YN=WBOT�� ���� ������ ��ġ�Ǿ� �ֽ��ϱ�?(Y/N)

if /i "%YN%" == "y" goto A2
if /i "%YN%" == "n" goto B2

goto A1
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:A2
pushd "%~dp0"
node app.js

:B2
echo �ʿ��� ����� ��ġ���Դϴ�.
echo ��� ��ġ�� �����ٸ� �ٽ� ���ּ���!
pause
npm i 
pause
echo ��� ��⼳ġ�� �������ϴ�.
pause
goto :QUIT


:QUIT