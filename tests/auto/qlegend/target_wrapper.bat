@echo off
SetLocal EnableDelayedExpansion
(set PATH=C:\workspace\l2xx\qtcharts\lib;C:\Qt\Qt5.6.3\5.6.3\msvc2015\lib;!PATH!)
if defined QT_PLUGIN_PATH (
    set QT_PLUGIN_PATH=C:\Qt\Qt5.6.3\5.6.3\msvc2015\plugins;!QT_PLUGIN_PATH!
) else (
    set QT_PLUGIN_PATH=C:\Qt\Qt5.6.3\5.6.3\msvc2015\plugins
)
%*
EndLocal
