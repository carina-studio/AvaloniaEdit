@echo off

IF not exist Packages (
	mkdir Packages
)

dotnet build src/AvaloniaEdit.TextMate -c Release
IF %ERRORLEVEL% NEQ 0 ( 
   exit
)

dotnet pack src/AvaloniaEdit -c Release -o Packages
dotnet pack src/AvaloniaEdit.TextMate -c Release -o Packages