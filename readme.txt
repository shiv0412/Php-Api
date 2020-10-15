:-Installation steps to deploy the php and mysql api on a linux server:-
--------------------------------------------------------------------------

Note- In this assignment process I use Xampp serever (i.e localhost) on Kali linux.

A) Steps to Install and start Xammp Local Sever:

Step-1 Goto xampp website using web browser and download xampp for linux operating system.
Step-2 Open the terminal and access terminal as a root user.
       - For root user access, use commands
         a) sudo su , then press enter
         b) type password and hit enter
Step-3 Now navigate to download directory using (cd) command
       - For my exmaple
       - root@kali:/home/shiv# cd Downloads
Step-4 Start xampp installer by typing below given command,
       - root@kali:/home/shiv/Downloads# chmod 755 xampp-linux-x64-7.4.11-0-installer.run
       - root@kali:/home/shiv/Downloads# ./xampp-linux-x64-7.4.11-0-installer.run
Step-5 Xampp installer automatically start installation prcoess.Simply click on next button appear on xampp installer UI(user interface).
Step-6 Launch xampp and start apache server.
Step-7 Done now xampp is successfully installed to the system and ready to work.

B) Steps to run API php script over localhost.

Step-1 Copy your Api file in htdocs folder of xampp directory.
Step-2 Open browser and type https://localhost/filename.extension. ex https://localhost/api.php
Step-3 Done the php API start working.

