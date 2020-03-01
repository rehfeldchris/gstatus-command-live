# What

This project contains some shells scripts that help you use various `AT` commands to interface with your LTE modem / hotspot.

In particular, it has a script that will call the `AT!GSTATUS?` command in a loop for you, making
 it easy to see live status info from your modem without having to run the shell command over and over again while
  doing speed tests etc...
  
It also has scripts to help you do band-locking. This includes adding new band-specific entries to the Nighthawk M1 admin screen 
dropdown menu, and you can also choose these new entries right from the shell script without having to log into the web GUI.

They need a bash shell and a typical linux-like environment to work right. I would imagine they work find on mac, and 
also on Windows if you use something like msys, git bash, cygwin, or the windows 10 linux sub system etc...

## Why
I bought a Netgear Nighthawk M1 MR1100 hotspot and wanted to experiment optimizing my download speeds. I wrote 
some scripts for myself and felt others might find them useful as well.

# Scripts

### live.sh
Runs the `AT!GSTATUS?` command in a loop, updating the shell console in a way that makes it look live. It also 
adds a timestamp so you can easily be sure the output updated, and didn't freeze / hang.


### get-info.sh
Outputs the result of various informational AT commands, including stuff like model / serial etc...# gstatus-command-live
