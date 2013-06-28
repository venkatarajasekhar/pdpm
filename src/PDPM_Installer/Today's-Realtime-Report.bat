@echo off

REM <one line to give the program's name and a brief idea of what it does.>
REM Copyright (C) 2008 Girish Managoli
REM 
REM This program is free software: you can redistribute it and/or modify
REM it under the terms of the GNU General Public License as published by
REM the Free Software Foundation, either version 3 of the License, or
REM (at your option) any later version.
REM 
REM This program is distributed in the hope that it will be useful,
REM but WITHOUT ANY WARRANTY; without even the implied warranty of
REM MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM GNU General Public License for more details.
REM 
REM You should have received a copy of the GNU General Public License
REM along with this program.  If not, see <http://www.gnu.org/licenses/>.

echo OFF

echo Updating Today's Realtime Report, hold on...

CALL Set-Java-Path.bat
%JAVAEXE% -cp pdpm.jar com.utils.pdpm.PDPM_Generate_Todays_Report

REM echo Opening Report in Browser...
CALL Open-Current-Report.bat
