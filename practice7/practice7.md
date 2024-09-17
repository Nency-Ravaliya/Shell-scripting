# Shell Scripting Exercises

## Practice Exercises

### Exercise 1
Write a shell script that loops through the `/etc/passwd` file one line at a time. Prepend each line with a line number followed by a colon and then a space.

#### Example output:
```
1: root:x:0:0:root:/root:/bin/bash
2: daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
3: bin:x:2:2:bin:/bin:/usr/sbin/nologin
4: sys:x:3:3:sys:/dev:/usr/sbin/nologin
```

---

### Exercise 2
Write a shell script that asks the user for the number of lines they would like to display from the `/etc/passwd` file and then display those lines.

#### Example output:
```
How many lines of /etc/passwd would you like to see? 3
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
```

---

### Exercise 3
Write a shell script that allows a user to select an action from a menu. The actions are:
1. Show the disk usage (use the `df` command).
2. Show the system uptime (use the `uptime` command).
3. Show the users logged into the system (use the `who` command).
4. Tell the user to enter `q` to quit. Display "Goodbye!" just before the script exits.

If the user enters anything other than `1`, `2`, `3`, or `q`, display "Invalid option."

#### Example output:
```
1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
What would you like to do? (Enter q to quit.) 2
14:59:08 up 3 days, 7:36, 7 users, load average: 0.13, 0.22, 0.33

1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
What would you like to do? (Enter q to quit.) 4
Invalid option.

1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
What would you like to do? (Enter q to quit.) q
Goodbye!
```
```
