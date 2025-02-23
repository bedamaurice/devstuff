# Zsh Shortcuts for Beginners

Welcome to Zsh! Here is a list of some of the most useful shortcuts to get you started.

## Basic Navigation and Editing

- `Ctrl + A` - Move to the beginning of the line
- `Ctrl + E` - Move to the end of the line
- `Ctrl + U` - Clear the line before the cursor
- `Ctrl + K` - Clear the line after the cursor
- `Ctrl + W` - Delete the word before the cursor
- `Ctrl + Y` - Paste the last item deleted (yank)
- `Ctrl + L` - Clear the screen
- `Ctrl + D` - Exit the shell (EOF)
- `Ctrl + H` - Backspace

## Command History

- `Up Arrow` - Previous command in history
- `Down Arrow` - Next command in history
- `Ctrl + R` - Search command history (incremental)
- `!!` - Repeat the last command
- `!n` - Repeat the nth command in history
- `!$` - Use the last argument from the previous command

## Command Completion

- `Tab` - Autocomplete commands, file names, directories, etc.
- `Ctrl + X + ?` - List all possible completions

## Job Control

- `Ctrl + Z` - Suspend the current foreground job
- `bg` - Resume the suspended job in the background
- `fg` - Bring the most recent job to the foreground
- `jobs` - List all jobs

## Process Management

- `Ctrl + C` - Interrupt/Kill the current process
- `Ctrl + \` - Quit and dump core
- `Ctrl + T` - Transpose characters (swap the character at the cursor with the one before it)

## Miscellaneous

- `Ctrl + G` - Abort the current editing command
- `Ctrl + _` - Undo the last change
- `Ctrl + X + Ctrl + E` - Open the current command line in your default editor

## Command Line Expansion

- `!*` - All arguments from previous command
- `^foo^bar` - Replace `foo` with `bar` in the previous command and execute it

## Zsh Specific Shortcuts

- `Alt + .` - Insert the last word of the previous command
- `Alt + /` - Attempt to complete file names
- `Alt + Q` - Push the current input line to the buffer stack

Happy shelling with Zsh!
