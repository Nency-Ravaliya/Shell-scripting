# Shell Scripting Exercises

## Logging Exercises

### Exercise 1
Write a shell script that displays one random number to the screen and also generates a syslog message with that random number. Use the `user` facility and the `info` priority for your messages.

### Hint:
Use the `$RANDOM` variable to generate a random number.

---

### Exercise 2
Modify the previous script to include a logging function. Additionally, tag each syslog message with "randomly" and include the process ID in the log. 

Generate and display 3 random numbers, and for each number, log the syslog message with the proper tags.

### Example output for syslog messages:
```
randomly[12345]: Random number: 5681
```
Where `12345` is the process ID.
```
