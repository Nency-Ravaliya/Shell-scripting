# Shell Scripting Exercises

## Exercise 1
Create a startup script for an application called `sleep-walking-server`, which is provided below. The script should be named `sleep-walking` and accept "start" and "stop" as arguments. If anything other than "start" or "stop" is provided as an argument, display a usage statement: 

```
Usage: sleep-walking start|stop
```

Terminate the script with an exit status of 1.

### Commands:
- To start `sleep-walking-server`, use this command: `/tmp/sleep-walking-server &`
- To stop `sleep-walking-server`, use this command: `kill $(cat /tmp/sleep-walking-server.pid)`

### Provided sleep-walking-server script:

```bash
#!/bin/bash
PID_FILE="/tmp/sleep-walking-server.pid"
trap "rm $PID_FILE; exit" SIGHUP SIGINT SIGTERM
echo "$$" > $PID_FILE
while true
do    
  :
done
```

Be sure to place this file in `/tmp` and run `chmod 755 /tmp/sleep-walking-server`.
```
