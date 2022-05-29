@ECHO OFF


GOTO //////////////////////////////////////////////////

::  ECHO %~f0  -- complete path & filename of running script
::  ECHO %~dp0 -- complete path of running script

%HOME% - may be defined by Windows domain setting (your network drive)

://////////////////////////////////////////////////

copy /V /Y  .bash_profile  %HOME%
copy /V /Y  .bashrc        %HOME%

copy /V /Y  .gitconfig     %HOME%

copy /V /Y  .minttyrc      %HOME%
copy /V /Y  .nanorc        %HOME%
copy /V /Y  .vimrc         %HOME%

