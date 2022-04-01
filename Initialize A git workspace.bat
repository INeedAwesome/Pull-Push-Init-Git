@echo off
set /p httpsAddres=Addres to an already existing repository?:
@echo URL='%httpsAddres%'

set /p message=Message for first push?:
@echo URL='%message%'

set /p gotgitignore=Do you have a .gitignore? [Y/n]:
IF /I "%gotgitignore%"=="n" (
	PAUSE
	EXIT
)

set /p proceed=Proceed? [Y/n]:

IF /I "%proceed%"=="y" (
	git init
	git add *
	git commit -m "%message%"
	git branch -M main
	git remote add origin %httpsAddres%
	git push -u origin main
)

PAUSE

