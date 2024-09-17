# Shell Scripting Exercises

## Exercise 1
Write a shell script that renames all files in the current directory that end in `.jpg` to begin with today's date in the following format: `YYYY-MM-DD`. For example, if a picture of your cat was in the current directory and today was October 31, 2016, it would rename the file from `mycat.jpg` to `2016-10-31-mycat.jpg`.

### Hint:
Look at the format options for the `date` command.

### Extra credit:
Handle instances where there are no `.jpg` files in the current directory. (Hint: Check out the `nullglob` option in the Bash manual.)

---

## Exercise 2
Write a script that renames files based on their file extension. The script should prompt the user for a file extension. Next, it should ask the user what prefix to prepend to the file names. By default, the prefix should be the current date in `YYYY-MM-DD` format. So, if the user simply presses enter, the date will be used as the prefix. Otherwise, the entered prefix will be used.

The script should display the original file name and the new name of the file. Finally, it should rename the file.

### Example output 1:
```
Please enter a file extension: jpg
Please enter a file prefix: (Press ENTER for 2015-08-10). vacation
Renaming mycat.jpg to vacation-mycat.jpg.
```

### Example output 2:
```
Please enter a file extension: jpg
Please enter a file prefix: (Press ENTER for 2015-08-10). 
Renaming mycat.jpg to 2015-08-10-mycat.jpg.
```
```
