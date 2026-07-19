@ECHO OFF

REM Using Github Desktop on samba share is very slow

robocopy . "C:\Users\john\Documents\GitHub\unbound" /s /njh /njs

TIMEOUT 10
