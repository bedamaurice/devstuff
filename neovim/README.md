# Neovim Shortcuts for Beginners

Welcome to Neovim! Here is a list of some of the most useful shortcuts to get you started.

## Basic Navigation

- `h` - Move left
- `j` - Move down
- `k` - Move up
- `l` - Move right
- `0` - Move to the beginning of the line
- `$` - Move to the end of the line
- `w` - Move to the beginning of the next word
- `b` - Move to the beginning of the previous word
- `gg` - Move to the beginning of the file
- `G` - Move to the end of the file

## Editing

- `i` - Insert mode
- `a` - Append after cursor
- `A` - Append at the end of the line
- `o` - Open a new line below the current line
- `O` - Open a new line above the current line
- `x` - Delete character under the cursor
- `dd` - Delete current line
- `yy` - Yank (copy) the current line
- `p` - Paste after the cursor
- `u` - Undo
- `Ctrl + r` - Redo

## Searching

- `/pattern` - Search for pattern
- `n` - Repeat search in the same direction
- `N` - Repeat search in the opposite direction
- `:%s/old/new/g` - Replace all occurrences of 'old' with 'new' in the file

## Visual Mode

- `v` - Enter visual mode
- `V` - Enter visual line mode
- `Ctrl + v` - Enter visual block mode
- `y` - Yank (copy) the selected text
- `d` - Delete the selected text
- `c` - Change the selected text

## File Management

- `:w` - Save the file
- `:q` - Quit Neovim
- `:wq` - Save and quit
- `:q!` - Quit without saving
- `:e filename` - Open a file
- `:bnext` or `:bn` - Go to the next buffer
- `:bprev` or `:bp` - Go to the previous buffer

## Splits and Windows

- `:split` or `:sp` - Horizontal split
- `:vsplit` or `:vsp` - Vertical split
- `Ctrl + w, then arrow key` - Move between splits
- `Ctrl + w, then w` - Cycle between splits
- `Ctrl + w, then q` - Close the current split

## Miscellaneous

- `.` - Repeat the last command
- `~` - Switch case of the character under the cursor
- `:%!command` - Filter the entire file through an external command

Happy coding with Neovim!
