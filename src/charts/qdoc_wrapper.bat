@echo off
SetLocal EnableDelayedExpansion
(set QT_VERSION=5.7.1)
(set QT_VER=5.7)
(set QT_VERSION_TAG=571)
(set QT_INSTALL_DOCS=C:/Qt/Qt5.6.3/Docs/Qt-5.6.3)
C:\Qt\Qt5.6.3\5.6.3\msvc2015\bin\qdoc.exe %*
EndLocal
