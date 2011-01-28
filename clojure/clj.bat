@echo off

SET DIR=C:\Progra~1\clojure
SET VERSION=1.2

SET CLOJURE=%DIR%\clojure-%VERSION%.jar
SET CONTRIB=%DIR%\clojure-contrib-%VERSION%.jar

java -server -cp .;%CLOJURE%;%CONTRIB% clojure.main %*
