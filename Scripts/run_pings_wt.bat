@echo on

SETLOCAL

set GATEWAY=
for /f "skip=2 tokens=8" %%d in ('tracert -d -h 1 1.1.1.1') do if not defined GATEWAY set GATEWAY=%%d

if not defined GATEWAY (
	echo "Could not find gateway"
	exit
)

wt --title "ping outside" ping -n 100000 1.1.1.1 ; split-pane --title "ping gateway" --horizontal ping -n 100000 %GATEWAY%
