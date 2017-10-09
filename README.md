# full_nmap
Performs a comprehensive* nmap scan against up to 5 hosts supplied at command line.  Assumes you are running Kali as root.  I'm currently too lazy, er, BUSY to code an have it read a .conf file, and I don't want it to ask every time, so it's hard coded.  Change it if you want something different.

Usage: 
  #./full_nmap 

The script:
  1) Pings each host to see if it's up, displays result
  2) For each up host, performs nmap scan, outputting all three filetypes to user's desktop
  3) Backgrounds each process and displays the PID
  
To monitor your nmap job's status(es), try:

    watch "ps -fu root | grep -i 'nmap'"

I didn't want to build that into the script.  The reason I backgrounded the jobs is so you can return to haxx0ring in the same terminal window.

* Comprehensive = Top 1000 ports, TCP, UDP, Service Version Info, OS Detection

@jonvalt
