SET TEMP=..\tmp\
SET TMP=..\tmp\
SET PATH=%PATH%;%CD%/spawner;%CD%/check
call "%VS80COMNTOOLS%vsvars32.bat"
:SET SP_USER=
:SET SP_PASSWORD=
:SET SP_RUNAS=60
SET SP_WRITE_LIMIT=30
SET SP_MEMORY_LIMIT=256
SET SP_DEADLINE=10
SET SP_REPORT_FILE=report.txt
SET SP_OUTPUT_FILE=stdout.txt
SET SP_HIDE_REPORT=1
SET SP_HIDE_OUTPUT=0
SET SP_SECURITY_LEVEL=1
SET CATS_JUDGE=1

:1
perl judge.pl
timeout 2
GOTO 1
