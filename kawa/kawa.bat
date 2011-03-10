@echo off

SET DIR=C:\kawa
SET VERSION=1.11
SET KAWA=%DIR%\kawa-%VERSION%.jar

java -server -cp .;%KAWA% kawa.repl -s %*
