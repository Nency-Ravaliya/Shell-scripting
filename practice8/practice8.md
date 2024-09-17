# Shell Scripting Exercises

## Practice Exercises

### Exercise 1
Write a shell script that exits on error and displays commands as they will execute, including all expansions and substitutions. Use 3 `ls` commands in your script:
1. The first `ls` command should succeed.
2. The second `ls` command should fail.
3. The third `ls` command should succeed.

If you are using the proper options, the third `ls` command will not be executed after the second one fails.

#### Hint:
Use `set -e` to exit on error and `set -x` to display the commands with their expansions and substitutions.

---

### Exercise 2
Modify the previous exercise so that the script continues, even if an error occurs. This time all three `ls` commands will execute, regardless of the success or failure of the previous ones.

#### Hint:
Use `set +e` to allow the script to continue after an error.
