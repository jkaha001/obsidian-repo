#!/bin/bash
#this is a simple script to create the network topology
eval `echo $(./time_server.py 0 1234) & &>output0.txt`
sleep 1
eval $(./time_server.py 1 1235 127.0.0.1 1234) & &>output1.txt 
#eval $(./time_server.py 2 1231 127.0.0.1 1235) & >output2.txt
#eval $(./time_server.py 3 1230 127.0.0.1 1231) & >output3.txt
#eval $(./time_server.py 4 1233 127.0.0.1 1234) & >output4.txt
#eval $(./time_server.py 5 1232 127.0.0.1 1234) & >output5.txt
#eval $(./time_server.py 6 1236 127.0.0.1 1232) & >output6.txt
sleep 2
pkill time_server.py
#ps -a | grep time_server.py | while read line
#do awk '{ print $2 }' | xargs kill -9
#done
				
#!/bin/bash
#this is a simple script to create the network topology
eval `echo $(./time_server.py 0 1234) & &>output0.txt`
sleep 1
eval $(./time_server.py 1 1235 127.0.0.1 1234) & &>output1.txt 
#eval $(./time_server.py 2 1231 127.0.0.1 1235) & >output2.txt
#eval $(./time_server.py 3 1230 127.0.0.1 1231) & >output3.txt
#eval $(./time_server.py 4 1233 127.0.0.1 1234) & >output4.txt
#eval $(./time_server.py 5 1232 127.0.0.1 1234) & >output5.txt
#eval $(./time_server.py 6 1236 127.0.0.1 1232) & >output6.txt
sleep 2
pkill time_server.py
#ps -a | grep time_server.py | while read line
#do awk '{ print $2 }' | xargs kill -9
#done
				
ls
sudo
cd mingw64/
ls
cd bin
ls
cd ..
ls
cd bin/
ls
cd ..
ls
cd ..
ls
cd usr
ls
cd ..
ls
cd cnmd
cd cmd
ls
git-gui.exe 
cd ..
ls
cd tmp
ls
commands
?
exit
updatedb
sudo updatedb
apt
git update-git-for-windows 
git status
git init
ls
cd gitStuff/
git init
git clone [200~https://github.com/osnr/TabFS.git~
git clone 'https://github.com/osnr/TabFS.git'
ls
cd TabFS/
ls
chmod
chmod u+x install.sh 
./install.sh --help
./install.sh firefox
git make
./install.sh firefox
vim install.sh 
cat install.sh 
git clean
git update-git-for-windows 
ls
cd .
cd ..
ls
uname 0a
uname -a
./TabFS/install.sh 
./TabFS/install.sh firefox
echo $MINGW_MOUNT_POINT/
echo $MANPATH 
env
env
kali
cd /
ls
pwd
cd ..
ls
cdd ..
ls
cd mnt
mkdir mnt
sudo mkdir mnt
sudo
apt
git install sudo
./git-bash.exe 
ls
cd ..
ls
gh repo clone osnr/TabFS
gh auth login
gh help mintty
exit
#!/usr/bin/env bash
set -eux
# (Brave uses same path as Chrome, so for Brave, say `chrome`)
if [[ "$#" -lt 1 || (           ! ( ( "$1" == "firefox" && "$#" -eq 1 ) ||               ( "$1" == "brave" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chrome" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "vivaldi" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chromebeta" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chromium" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "edgedev" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "opera" && "$#" -eq 2 && ${#2} -eq 32 ) ) ) ]]; then     echo "Usage: $0 <chrome EXTENSION_ID | firefox |
                     chromebeta EXTENSION_ID | chromium EXTENSION_ID |
                     vivaldi EXTENSION_ID | edgedev EXTENSION_ID |
                     brave EXTENSION_ID | opera EXTENSION_ID>";     exit 2; fi
#!/usr/bin/env bash
set -eux
# (Brave uses same path as Chrome, so for Brave, say `chrome`)
if [[ "$#" -lt 1 || (           ! ( ( "$1" == "firefox" && "$#" -eq 1 ) ||               ( "$1" == "brave" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chrome" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "vivaldi" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chromebeta" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chromium" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "edgedev" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "opera" && "$#" -eq 2 && ${#2} -eq 32 ) ) ) ]]; then     echo "Usage: $0 <chrome EXTENSION_ID | firefox |
                     chromebeta EXTENSION_ID | chromium EXTENSION_ID |
                     vivaldi EXTENSION_ID | edgedev EXTENSION_ID |
                     brave EXTENSION_ID | opera EXTENSION_ID>";     exit 2; fi
#!/bin/bash
# GWSL Helper Script v4
cd ~
i="$1"
#BASH EXPORTS
if [ "export-d" == "$i" ] #Bash Export Display = ip. Usage: tools export-d 1
then 	wsl_version="$2"; 	wsl_shell="$3"; 	 	if [ $wsl_version == "1" ]; 	then 		echo Configuring Display for WSL 1 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/DISPLAY /d' ~/.config/fish/config.fish; 			echo "set -gx DISPLAY :0.0 #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.zshrc; 			echo "export DISPLAY=:0.0  #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.profile; 			echo "export DISPLAY=:0.0  #GWSL" >> ~/.profile; 			sed -i.bak '/DISPLAY=/d' ~/.bashrc; 			echo "export DISPLAY=:0.0  #GWSL" >> ~/.bashrc; 		fi; 	 	elif [ $wsl_version == "2" ]; 	then 		echo Configuring Display for WSL 2 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/DISPLAY /d' ~/.config/fish/config.fish; 			echo "set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.zshrc; 			echo "export DISPLAY=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.profile; 			echo "export DISPLAY=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.profile; 			sed -i.bak '/DISPLAY=/d' ~/.bashrc; 			echo "export DISPLAY=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.bashrc; 		fi; 	fi;  elif [ "export-a" == "$i" ] #Bash Export audio = tcp:ip. Usage: tools export-a 1 shell
then 	wsl_version="$2"; 	wsl_shell="$3"; 	 	if [ $wsl_version == "1" ]; 	then 		echo Configuring Audio for WSL 1 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/PULSE_SERVER /d' ~/.config/fish/config.fish; 			echo "set -gx PULSE_SERVER tcp:localhost #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.zshrc; 			echo "export PULSE_SERVER=tcp:localhost #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.profile; 			echo "export PULSE_SERVER=tcp:localhost #GWSL" >> ~/.profile; 			sed -i.bak '/PULSE_SERVER=/d' ~/.bashrc; 			echo "export PULSE_SERVER=tcp:localhost #GWSL" >> ~/.bashrc; 		fi; 	 	elif [ $wsl_version == "2" ]; 	then 		echo Configuring Audio for WSL 2 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/PULSE_SERVER /d' ~/.config/fish/config.fish; 			echo "set -gx PULSE_SERVER tcp:(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.zshrc; 			echo "export PULSE_SERVER=tcp:\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.profile; 			echo "export PULSE_SERVER=tcp:\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.profile; 			sed -i.bak '/PULSE_SERVER=/d' ~/.bashrc; 			echo "export PULSE_SERVER=tcp:\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.bashrc; 		fi; 	fi;  elif [ "export-v" == $i ] # set env variable in all wsl shells. Usage: tools export-v var val
then     var_name="$2"; 	var_value="$3"; 	wsl_shell="$4"; 	echo Exporting Variable $var_name for WSL with value $var_value on $wsl_shell; 	 	if [ $wsl_shell == "fish" ]; 	then
		sed -i.bak '/set -gx '"$var_name"'/d' ~/.config/fish/config.fish; 		echo 'set -gx '"$var_name"' '"$var_value"' #GWSL' >> ~/.config/fish/config.fish; 		 	elif [ $wsl_shell == "zsh" ]; 	then
		sed -i.bak '/'"$var_name"'=/d' ~/.zshrc; 		echo 'export '"$var_name"'='"$var_value"' #GWSL' >> ~/.zshrc; 		 	elif [ $wsl_shell == "bash" ]; 	then
		sed -i.bak '/'"$var_name"'=/d' ~/.profile; 		echo 'export '"$var_name"'='"$var_value"' #GWSL' >> ~/.profile; 		sed -i.bak '/'"$var_name"'=/d' ~/.bashrc; 		echo 'export '"$var_name"'='"$var_value"' #GWSL' >> ~/.bashrc; 	fi;  elif [ "listappsold" == $i ] #return list of installed gui apps and commands
then 	all_apps=(); 	apps=`find -L /usr/share/applications -name '*.desktop' -print0 |xargs -0 grep -i -l "Terminal=False"`; 	for app in $apps; 	do 		all_apps+=`cat $app | sed -En '/^Name=/p'`; 		all_apps+=":cmd:"; 		all_apps+=`cat $app | sed -En '/^Exec=/p'`; 		all_apps+=":ico:"; 		all_apps+=`cat $app | sed -En '/Icon=/p'`; 		all_apps+="/:/"; 	done; 	echo -e $all_apps; 	 elif [ "listapps" == $i ] #return list of installed gui apps and commands
then 	all_apps=(); 	apps=`find -L /usr/share/applications -name '*.desktop' -print0 |xargs -0 grep -i -l "Terminal=False"`; 	for app in $apps; 	do 		all_apps+=$app"\n"; 		 	done; 	echo -e $all_apps;  elif [ "profile" == $i ] #cat of .profile
then 	wsl_shell="$2"; 	 	 	if [ $wsl_shell == "fish" ]; 	then 		cat ~/.config/fish/config.fish; 	elif [ $wsl_shell == "zsh" ]; 	then 		cat ~/.zshrc; 	elif [ $wsl_shell == "bash" ]; 	then 		cat ~/.profile; 	fi;  elif [ "listthemes" == $i ] #return list of installed themes in usr themes and home themes
then 	all_themes=(); 	themes=`find /usr/share/themes  -maxdepth 1 -type d`; 	for theme in $themes; 	do 		type=`ls $theme`; 		if [[ $type == *"gtk-"* ]]; 		then 			all_themes+=$theme; 			all_themes+=":theme:"; 		fi; 	done;  	themes=`find ~/.themes  -maxdepth 1 -type d` || echo ""; 	for theme in $themes; 	do 		type=`ls $theme`; 		if [[ $type == *"gtk-"* ]]; 		then 			all_themes+=$theme; 			all_themes+=":theme:"; 		fi; 	done;  	echo $all_themes;  elif [ "dbus" == $i ] #inject start dbus into profile
then 	echo "injecting dbus into .profile"; 	sed -i.bak '//etc/init.d/dbus start/d' ~/.profile; 	echo "sudo /etc/init.d/dbus start" >> ~/.profile;  	sed -i.bak '//etc/init.d/dbus start/d' ~/.bashrc; 	echo "sudo /etc/init.d/dbus start" >> ~/.bashrc; 	 elif [ "cleanup" == $i ] #cleanup all modifications made by GWSL
then 	echo "cleaning .profile"; 	sed -i.bak '/#GWSL/d' ~/.profile; 	echo "cleaning .bashrc"; 	sed -i.bak '/#GWSL/d' ~/.bashrc; 	echo "cleaning .zshrc"; 	sed -i.bak '/#GWSL/d' ~/.zshrc; 	echo "cleaning .config/fish/config.fish"; 	sed -i.bak '/#GWSL/d' ~/.config/fish/config.fish;  else    echo "Not recognized"; fi
# Generic SysV init.d script
# Copyright (C) 2015 Daniel Boland <d.boland@rocleiden.nl>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
OSNAME=`uname | awk -F_ '{printf $1}'`
RESULT=0
PID=""
STATUS=""
COMMAND="$1"
CMDLIST="help|start|stop|restart|status|graceful|install"
function print_status { 	echo "$0 $COMMAND: $1"; }
function is_running { 	PID=`awk '{print $1; exit}' $PIDFILE 2>/dev/null`; 	if ! [ $PID ]; then 		STATUS="$PROGRAM (no pid file) not running"; 		return 1; 	elif kill -0 $PID 2>/dev/null; then 		STATUS="$PROGRAM (pid $PID) running"; 	else 		STATUS="$PROGRAM (pid $PID?) not running"; 		return 1; 	fi; }
function start_program { 	$PROGFILE $PROGARGS; }
function stop_program { 	kill $PID; }
function restart_program { 	kill -$1 $PID; }
function start_cygwin_service { 	if /usr/bin/cygrunsrv -Q "cyg_$SERVICE" >/dev/null 2>&1; then 		rm -f /var/log/cyg_$SERVICE.log; 		/usr/bin/cygrunsrv -S cyg_$SERVICE 2>&1; 		result=$?; 		cat /var/log/cyg_$SERVICE.log; 		return $result; 	else 		start_program; 	fi; }
function start_service { 	if [ $OSNAME == CYGWIN ]; then 		start_cygwin_service; 	else 		start_program; 	fi; }
function restart_service { 	if ! is_running; then 		print_status "$PROGRAM not running, trying to start"; 		start_service; 	else 		restart_program $1; 	fi; }
function install_cygwin_service { 	if ! /usr/bin/cygrunsrv -Q "cyg_$SERVICE" 2>/dev/null; then 		STATUS="$SERVICE service installed"; 		/usr/bin/cygrunsrv -I "cyg_$SERVICE" -d "CYGWIN $PROGRAM" -t "$CYGTYPE" -o -p "$PROGFILE" -a "$CYGARGS"; 	fi; }
function install_service { 	if [ -f /etc/init.d/$SERVICE ]; then 		STATUS="$SERVICE service already installed"; 	else 		STATUS="$SERVICE service installed"; 		cp $0 /etc/init.d/$SERVICE; 	fi; 	if [ $OSNAME == CYGWIN ]; then 		install_cygwin_service; 	fi; }
function print_syntax { 	echo "Usage: $0 [COMMAND]"; 	echo; 	echo commands:; 	printf -- " start      - start $PROGRAM\n"; 	printf -- " stop       - stop $PROGRAM\n"; 	printf -- " restart    - restart $PROGRAM by sending a SIGHUP if running or start if \n"; 	printf -- "              not running\n"; 	printf -- " fullstatus - dump a full status screen; requires lynx and mod_status enabled\n"; 	printf -- " status     - dump a short status screen; requires lynx and mod_status enabled\n"; 	printf -- " graceful   - do a graceful restart by sending a SIGUSR1 or start if not running\n"; 	printf -- " help       - this screen\n"; }
function do_help { 	print_syntax; }
function do_start { 	if is_running; then 		print_status "$STATUS"; 	elif start_service; then 		print_status "$PROGRAM started"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be started ($RESULT)"; 	fi; }
function do_stop { 	if ! is_running; then 		print_status "$STATUS"; 	elif stop_program; then 		print_status "$PROGRAM stopped"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be stopped ($RESULT)"; 	fi; }
function do_restart { 	if restart_service HUP; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted ($RESULT)"; 	fi; }
function do_status { 	is_running || RESULT=1; 	print_status "$STATUS"; }
function do_graceful { 	if restart_service USR1; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted gracefully ($RESULT)"; 	fi; }
function do_install { 	if install_service; then 		print_status "$STATUS"; 	else 		RESULT=$?; 		print_status "$SERVICE service could not be installed ($RESULT)"; 	fi; }
function do_command { 	if ! [ "$COMMAND" ]; then 		echo "Usage: $0 {$CMDLIST}"; 	elif do_$COMMAND 2>/dev/null; then 		exit $RESULT; 	else 		print_status "Command not implemented"; 		echo "Usage: $0 {$CMDLIST}"; 		exit 1; 	fi; }
# Generic SysV init.d script
# Copyright (C) 2015 Daniel Boland <d.boland@rocleiden.nl>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
OSNAME=`uname | awk -F_ '{printf $1}'`
RESULT=0
PID=""
STATUS=""
COMMAND="$1"
CMDLIST="help|start|stop|restart|status|graceful|install"
function print_status { 	echo "$0 $COMMAND: $1"; }
function is_running { 	PID=`awk '{print $1; exit}' $PIDFILE 2>/dev/null`; 	if ! [ $PID ]; then 		STATUS="$PROGRAM (no pid file) not running"; 		return 1; 	elif kill -0 $PID 2>/dev/null; then 		STATUS="$PROGRAM (pid $PID) running"; 	else 		STATUS="$PROGRAM (pid $PID?) not running"; 		return 1; 	fi; }
function start_program { 	$PROGFILE $PROGARGS; }
function stop_program { 	kill $PID; }
function restart_program { 	kill -$1 $PID; }
function start_cygwin_service { 	if /usr/bin/cygrunsrv -Q "cyg_$SERVICE" >/dev/null 2>&1; then 		rm -f /var/log/cyg_$SERVICE.log; 		/usr/bin/cygrunsrv -S cyg_$SERVICE 2>&1; 		result=$?; 		cat /var/log/cyg_$SERVICE.log; 		return $result; 	else 		start_program; 	fi; }
function start_service { 	if [ $OSNAME == CYGWIN ]; then 		start_cygwin_service; 	else 		start_program; 	fi; }
function restart_service { 	if ! is_running; then 		print_status "$PROGRAM not running, trying to start"; 		start_service; 	else 		restart_program $1; 	fi; }
function install_cygwin_service { 	if ! /usr/bin/cygrunsrv -Q "cyg_$SERVICE" 2>/dev/null; then 		STATUS="$SERVICE service installed"; 		/usr/bin/cygrunsrv -I "cyg_$SERVICE" -d "CYGWIN $PROGRAM" -t "$CYGTYPE" -o -p "$PROGFILE" -a "$CYGARGS"; 	fi; }
function install_service { 	if [ -f /etc/init.d/$SERVICE ]; then 		STATUS="$SERVICE service already installed"; 	else 		STATUS="$SERVICE service installed"; 		cp $0 /etc/init.d/$SERVICE; 	fi; 	if [ $OSNAME == CYGWIN ]; then 		install_cygwin_service; 	fi; }
function print_syntax { 	echo "Usage: $0 [COMMAND]"; 	echo; 	echo commands:; 	printf -- " start      - start $PROGRAM\n"; 	printf -- " stop       - stop $PROGRAM\n"; 	printf -- " restart    - restart $PROGRAM by sending a SIGHUP if running or start if \n"; 	printf -- "              not running\n"; 	printf -- " fullstatus - dump a full status screen; requires lynx and mod_status enabled\n"; 	printf -- " status     - dump a short status screen; requires lynx and mod_status enabled\n"; 	printf -- " graceful   - do a graceful restart by sending a SIGUSR1 or start if not running\n"; 	printf -- " help       - this screen\n"; }
function do_help { 	print_syntax; }
function do_start { 	if is_running; then 		print_status "$STATUS"; 	elif start_service; then 		print_status "$PROGRAM started"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be started ($RESULT)"; 	fi; }
function do_stop { 	if ! is_running; then 		print_status "$STATUS"; 	elif stop_program; then 		print_status "$PROGRAM stopped"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be stopped ($RESULT)"; 	fi; }
function do_restart { 	if restart_service HUP; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted ($RESULT)"; 	fi; }
function do_status { 	is_running || RESULT=1; 	print_status "$STATUS"; }
function do_graceful { 	if restart_service USR1; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted gracefully ($RESULT)"; 	fi; }
function do_install { 	if install_service; then 		print_status "$STATUS"; 	else 		RESULT=$?; 		print_status "$SERVICE service could not be installed ($RESULT)"; 	fi; }
function do_command { 	if ! [ "$COMMAND" ]; then 		echo "Usage: $0 {$CMDLIST}"; 	elif do_$COMMAND 2>/dev/null; then 		exit $RESULT; 	else 		print_status "Command not implemented"; 		echo "Usage: $0 {$CMDLIST}"; 		exit 1; 	fi; }
# Generic SysV init.d script
# Copyright (C) 2015 Daniel Boland <d.boland@rocleiden.nl>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
OSNAME=`uname | awk -F_ '{printf $1}'`
RESULT=0
PID=""
STATUS=""
COMMAND="$1"
CMDLIST="help|start|stop|restart|status|graceful|install"
function print_status { 	echo "$0 $COMMAND: $1"; }
function is_running { 	PID=`awk '{print $1; exit}' $PIDFILE 2>/dev/null`; 	if ! [ $PID ]; then 		STATUS="$PROGRAM (no pid file) not running"; 		return 1; 	elif kill -0 $PID 2>/dev/null; then 		STATUS="$PROGRAM (pid $PID) running"; 	else 		STATUS="$PROGRAM (pid $PID?) not running"; 		return 1; 	fi; }
function start_program { 	$PROGFILE $PROGARGS; }
function stop_program { 	kill $PID; }
function restart_program { 	kill -$1 $PID; }
function start_cygwin_service { 	if /usr/bin/cygrunsrv -Q "cyg_$SERVICE" >/dev/null 2>&1; then 		rm -f /var/log/cyg_$SERVICE.log; 		/usr/bin/cygrunsrv -S cyg_$SERVICE 2>&1; 		result=$?; 		cat /var/log/cyg_$SERVICE.log; 		return $result; 	else 		start_program; 	fi; }
function start_service { 	if [ $OSNAME == CYGWIN ]; then 		start_cygwin_service; 	else 		start_program; 	fi; }
function restart_service { 	if ! is_running; then 		print_status "$PROGRAM not running, trying to start"; 		start_service; 	else 		restart_program $1; 	fi; }
function install_cygwin_service { 	if ! /usr/bin/cygrunsrv -Q "cyg_$SERVICE" 2>/dev/null; then 		STATUS="$SERVICE service installed"; 		/usr/bin/cygrunsrv -I "cyg_$SERVICE" -d "CYGWIN $PROGRAM" -t "$CYGTYPE" -o -p "$PROGFILE" -a "$CYGARGS"; 	fi; }
function install_service { 	if [ -f /etc/init.d/$SERVICE ]; then 		STATUS="$SERVICE service already installed"; 	else 		STATUS="$SERVICE service installed"; 		cp $0 /etc/init.d/$SERVICE; 	fi; 	if [ $OSNAME == CYGWIN ]; then 		install_cygwin_service; 	fi; }
function print_syntax { 	echo "Usage: $0 [COMMAND]"; 	echo; 	echo commands:; 	printf -- " start      - start $PROGRAM\n"; 	printf -- " stop       - stop $PROGRAM\n"; 	printf -- " restart    - restart $PROGRAM by sending a SIGHUP if running or start if \n"; 	printf -- "              not running\n"; 	printf -- " fullstatus - dump a full status screen; requires lynx and mod_status enabled\n"; 	printf -- " status     - dump a short status screen; requires lynx and mod_status enabled\n"; 	printf -- " graceful   - do a graceful restart by sending a SIGUSR1 or start if not running\n"; 	printf -- " help       - this screen\n"; }
function do_help { 	print_syntax; }
function do_start { 	if is_running; then 		print_status "$STATUS"; 	elif start_service; then 		print_status "$PROGRAM started"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be started ($RESULT)"; 	fi; }
function do_stop { 	if ! is_running; then 		print_status "$STATUS"; 	elif stop_program; then 		print_status "$PROGRAM stopped"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be stopped ($RESULT)"; 	fi; }
function do_restart { 	if restart_service HUP; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted ($RESULT)"; 	fi; }
function do_status { 	is_running || RESULT=1; 	print_status "$STATUS"; }
function do_graceful { 	if restart_service USR1; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted gracefully ($RESULT)"; 	fi; }
function do_install { 	if install_service; then 		print_status "$STATUS"; 	else 		RESULT=$?; 		print_status "$SERVICE service could not be installed ($RESULT)"; 	fi; }
function do_command { 	if ! [ "$COMMAND" ]; then 		echo "Usage: $0 {$CMDLIST}"; 	elif do_$COMMAND 2>/dev/null; then 		exit $RESULT; 	else 		print_status "Command not implemented"; 		echo "Usage: $0 {$CMDLIST}"; 		exit 1; 	fi; }
#!/usr/bin/env bash
set -eux
# (Brave uses same path as Chrome, so for Brave, say `chrome`)
if [[ "$#" -lt 1 || (           ! ( ( "$1" == "firefox" && "$#" -eq 1 ) ||               ( "$1" == "brave" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chrome" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "vivaldi" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chromebeta" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "chromium" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "edgedev" && "$#" -eq 2 && ${#2} -eq 32 ) ||               ( "$1" == "opera" && "$#" -eq 2 && ${#2} -eq 32 ) ) ) ]]; then     echo "Usage: $0 <chrome EXTENSION_ID | firefox |
                     chromebeta EXTENSION_ID | chromium EXTENSION_ID |
                     vivaldi EXTENSION_ID | edgedev EXTENSION_ID |
                     brave EXTENSION_ID | opera EXTENSION_ID>";     exit 2; fi
# Generic SysV init.d script
# Copyright (C) 2015 Daniel Boland <d.boland@rocleiden.nl>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
OSNAME=`uname | awk -F_ '{printf $1}'`
RESULT=0
PID=""
STATUS=""
COMMAND="$1"
CMDLIST="help|start|stop|restart|status|graceful|install"
function print_status { 	echo "$0 $COMMAND: $1"; }
function is_running { 	PID=`awk '{print $1; exit}' $PIDFILE 2>/dev/null`; 	if ! [ $PID ]; then 		STATUS="$PROGRAM (no pid file) not running"; 		return 1; 	elif kill -0 $PID 2>/dev/null; then 		STATUS="$PROGRAM (pid $PID) running"; 	else 		STATUS="$PROGRAM (pid $PID?) not running"; 		return 1; 	fi; }
function start_program { 	$PROGFILE $PROGARGS; }
function stop_program { 	kill $PID; }
function restart_program { 	kill -$1 $PID; }
function start_cygwin_service { 	if /usr/bin/cygrunsrv -Q "cyg_$SERVICE" >/dev/null 2>&1; then 		rm -f /var/log/cyg_$SERVICE.log; 		/usr/bin/cygrunsrv -S cyg_$SERVICE 2>&1; 		result=$?; 		cat /var/log/cyg_$SERVICE.log; 		return $result; 	else 		start_program; 	fi; }
function start_service { 	if [ $OSNAME == CYGWIN ]; then 		start_cygwin_service; 	else 		start_program; 	fi; }
function restart_service { 	if ! is_running; then 		print_status "$PROGRAM not running, trying to start"; 		start_service; 	else 		restart_program $1; 	fi; }
function install_cygwin_service { 	if ! /usr/bin/cygrunsrv -Q "cyg_$SERVICE" 2>/dev/null; then 		STATUS="$SERVICE service installed"; 		/usr/bin/cygrunsrv -I "cyg_$SERVICE" -d "CYGWIN $PROGRAM" -t "$CYGTYPE" -o -p "$PROGFILE" -a "$CYGARGS"; 	fi; }
function install_service { 	if [ -f /etc/init.d/$SERVICE ]; then 		STATUS="$SERVICE service already installed"; 	else 		STATUS="$SERVICE service installed"; 		cp $0 /etc/init.d/$SERVICE; 	fi; 	if [ $OSNAME == CYGWIN ]; then 		install_cygwin_service; 	fi; }
function print_syntax { 	echo "Usage: $0 [COMMAND]"; 	echo; 	echo commands:; 	printf -- " start      - start $PROGRAM\n"; 	printf -- " stop       - stop $PROGRAM\n"; 	printf -- " restart    - restart $PROGRAM by sending a SIGHUP if running or start if \n"; 	printf -- "              not running\n"; 	printf -- " fullstatus - dump a full status screen; requires lynx and mod_status enabled\n"; 	printf -- " status     - dump a short status screen; requires lynx and mod_status enabled\n"; 	printf -- " graceful   - do a graceful restart by sending a SIGUSR1 or start if not running\n"; 	printf -- " help       - this screen\n"; }
function do_help { 	print_syntax; }
function do_start { 	if is_running; then 		print_status "$STATUS"; 	elif start_service; then 		print_status "$PROGRAM started"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be started ($RESULT)"; 	fi; }
function do_stop { 	if ! is_running; then 		print_status "$STATUS"; 	elif stop_program; then 		print_status "$PROGRAM stopped"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be stopped ($RESULT)"; 	fi; }
function do_restart { 	if restart_service HUP; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted ($RESULT)"; 	fi; }
function do_status { 	is_running || RESULT=1; 	print_status "$STATUS"; }
function do_graceful { 	if restart_service USR1; then 		print_status "$PROGRAM restarted"; 	else 		RESULT=$?; 		print_status "$PROGRAM could not be restarted gracefully ($RESULT)"; 	fi; }
function do_install { 	if install_service; then 		print_status "$STATUS"; 	else 		RESULT=$?; 		print_status "$SERVICE service could not be installed ($RESULT)"; 	fi; }
function do_command { 	if ! [ "$COMMAND" ]; then 		echo "Usage: $0 {$CMDLIST}"; 	elif do_$COMMAND 2>/dev/null; then 		exit $RESULT; 	else 		print_status "Command not implemented"; 		echo "Usage: $0 {$CMDLIST}"; 		exit 1; 	fi; }
#!/bin/bash
# GWSL Helper Script v4
cd ~
i="$1"
#BASH EXPORTS
if [ "export-d" == "$i" ] #Bash Export Display = ip. Usage: tools export-d 1
then 	wsl_version="$2"; 	wsl_shell="$3"; 	 	if [ $wsl_version == "1" ]; 	then 		echo Configuring Display for WSL 1 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/DISPLAY /d' ~/.config/fish/config.fish; 			echo "set -gx DISPLAY :0.0 #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.zshrc; 			echo "export DISPLAY=:0.0  #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.profile; 			echo "export DISPLAY=:0.0  #GWSL" >> ~/.profile; 			sed -i.bak '/DISPLAY=/d' ~/.bashrc; 			echo "export DISPLAY=:0.0  #GWSL" >> ~/.bashrc; 		fi; 	 	elif [ $wsl_version == "2" ]; 	then 		echo Configuring Display for WSL 2 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/DISPLAY /d' ~/.config/fish/config.fish; 			echo "set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.zshrc; 			echo "export DISPLAY=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/DISPLAY=/d' ~/.profile; 			echo "export DISPLAY=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.profile; 			sed -i.bak '/DISPLAY=/d' ~/.bashrc; 			echo "export DISPLAY=\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}'):0.0 #GWSL" >> ~/.bashrc; 		fi; 	fi;  elif [ "export-a" == "$i" ] #Bash Export audio = tcp:ip. Usage: tools export-a 1 shell
then 	wsl_version="$2"; 	wsl_shell="$3"; 	 	if [ $wsl_version == "1" ]; 	then 		echo Configuring Audio for WSL 1 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/PULSE_SERVER /d' ~/.config/fish/config.fish; 			echo "set -gx PULSE_SERVER tcp:localhost #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.zshrc; 			echo "export PULSE_SERVER=tcp:localhost #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.profile; 			echo "export PULSE_SERVER=tcp:localhost #GWSL" >> ~/.profile; 			sed -i.bak '/PULSE_SERVER=/d' ~/.bashrc; 			echo "export PULSE_SERVER=tcp:localhost #GWSL" >> ~/.bashrc; 		fi; 	 	elif [ $wsl_version == "2" ]; 	then 		echo Configuring Audio for WSL 2 and $wsl_shell; 		if [ $wsl_shell == "fish" ]; 		then
			sed -i.bak '/PULSE_SERVER /d' ~/.config/fish/config.fish; 			echo "set -gx PULSE_SERVER tcp:(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.config/fish/config.fish; 		elif [ $wsl_shell == "zsh" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.zshrc; 			echo "export PULSE_SERVER=tcp:\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.zshrc; 		elif [ $wsl_shell == "bash" ]; 		then
			sed -i.bak '/PULSE_SERVER=/d' ~/.profile; 			echo "export PULSE_SERVER=tcp:\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.profile; 			sed -i.bak '/PULSE_SERVER=/d' ~/.bashrc; 			echo "export PULSE_SERVER=tcp:\$(cat /etc/resolv.conf | grep nameserver | awk '{print \$2; exit;}') #GWSL" >> ~/.bashrc; 		fi; 	fi;  elif [ "export-v" == $i ] # set env variable in all wsl shells. Usage: tools export-v var val
then     var_name="$2"; 	var_value="$3"; 	wsl_shell="$4"; 	echo Exporting Variable $var_name for WSL with value $var_value on $wsl_shell; 	 	if [ $wsl_shell == "fish" ]; 	then
		sed -i.bak '/set -gx '"$var_name"'/d' ~/.config/fish/config.fish; 		echo 'set -gx '"$var_name"' '"$var_value"' #GWSL' >> ~/.config/fish/config.fish; 		 	elif [ $wsl_shell == "zsh" ]; 	then
		sed -i.bak '/'"$var_name"'=/d' ~/.zshrc; 		echo 'export '"$var_name"'='"$var_value"' #GWSL' >> ~/.zshrc; 		 	elif [ $wsl_shell == "bash" ]; 	then
		sed -i.bak '/'"$var_name"'=/d' ~/.profile; 		echo 'export '"$var_name"'='"$var_value"' #GWSL' >> ~/.profile; 		sed -i.bak '/'"$var_name"'=/d' ~/.bashrc; 		echo 'export '"$var_name"'='"$var_value"' #GWSL' >> ~/.bashrc; 	fi;  elif [ "listappsold" == $i ] #return list of installed gui apps and commands
then 	all_apps=(); 	apps=`find -L /usr/share/applications -name '*.desktop' -print0 |xargs -0 grep -i -l "Terminal=False"`; 	for app in $apps; 	do 		all_apps+=`cat $app | sed -En '/^Name=/p'`; 		all_apps+=":cmd:"; 		all_apps+=`cat $app | sed -En '/^Exec=/p'`; 		all_apps+=":ico:"; 		all_apps+=`cat $app | sed -En '/Icon=/p'`; 		all_apps+="/:/"; 	done; 	echo -e $all_apps; 	 elif [ "listapps" == $i ] #return list of installed gui apps and commands
then 	all_apps=(); 	apps=`find -L /usr/share/applications -name '*.desktop' -print0 |xargs -0 grep -i -l "Terminal=False"`; 	for app in $apps; 	do 		all_apps+=$app"\n"; 		 	done; 	echo -e $all_apps;  elif [ "profile" == $i ] #cat of .profile
then 	wsl_shell="$2"; 	 	 	if [ $wsl_shell == "fish" ]; 	then 		cat ~/.config/fish/config.fish; 	elif [ $wsl_shell == "zsh" ]; 	then 		cat ~/.zshrc; 	elif [ $wsl_shell == "bash" ]; 	then 		cat ~/.profile; 	fi;  elif [ "listthemes" == $i ] #return list of installed themes in usr themes and home themes
then 	all_themes=(); 	themes=`find /usr/share/themes  -maxdepth 1 -type d`; 	for theme in $themes; 	do 		type=`ls $theme`; 		if [[ $type == *"gtk-"* ]]; 		then 			all_themes+=$theme; 			all_themes+=":theme:"; 		fi; 	done;  	themes=`find ~/.themes  -maxdepth 1 -type d` || echo ""; 	for theme in $themes; 	do 		type=`ls $theme`; 		if [[ $type == *"gtk-"* ]]; 		then 			all_themes+=$theme; 			all_themes+=":theme:"; 		fi; 	done;  	echo $all_themes;  elif [ "dbus" == $i ] #inject start dbus into profile
then 	echo "injecting dbus into .profile"; 	sed -i.bak '//etc/init.d/dbus start/d' ~/.profile; 	echo "sudo /etc/init.d/dbus start" >> ~/.profile;  	sed -i.bak '//etc/init.d/dbus start/d' ~/.bashrc; 	echo "sudo /etc/init.d/dbus start" >> ~/.bashrc; 	 elif [ "cleanup" == $i ] #cleanup all modifications made by GWSL
then 	echo "cleaning .profile"; 	sed -i.bak '/#GWSL/d' ~/.profile; 	echo "cleaning .bashrc"; 	sed -i.bak '/#GWSL/d' ~/.bashrc; 	echo "cleaning .zshrc"; 	sed -i.bak '/#GWSL/d' ~/.zshrc; 	echo "cleaning .config/fish/config.fish"; 	sed -i.bak '/#GWSL/d' ~/.config/fish/config.fish;  else    echo "Not recognized"; fi
git show
ls
cd PycharmProjects/phoneinfoga/phoneinfoga/
ls
cd ..
ls
ls -la
cd phoneinfoga/
ls
ls - la
ls -la
sudo git origin
sudo git remote set-url ori
git
git remote -v
sudo git push 
ls
sudo git fetch
git fetch
git push
git remote origin -v
git remote origin get-url
git remote get-url
git remote get-url --all
git remote get-url [A
git remote -v
git remote get-url
git remote get-url origin
git push
git push
git remote get-url origin
git remote set-url origin
