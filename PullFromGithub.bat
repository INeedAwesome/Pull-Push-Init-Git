@echo off
@echo Pulling from github!
set /p httpsAddres=Addres to an already existing repository?:
@echo URL='%httpsAddres%'

set /p proceed=Proceed? [Y/n]:

IF /I "%proceed%"=="n" (
	PAUSE
	EXIT
)

@echo proceeding...

git pull %httpsAddres%