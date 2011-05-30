@echo off

SET KAWA=C:\Progra~1\kawa\kawa-%KAWA_VERSION%.jar

java -server -cp .;%KAWA% kawa.repl -s %*
