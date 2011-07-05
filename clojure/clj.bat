@echo off

SET CLOJURE=C:\Progra~1\clojure\clojure-%CLOJURE_VERSION%.jar

java -server -cp .;%CLOJURE% clojure.main %*
