# alias.zsh - Useful Ubuntu Aliases
alias vi="nvim"
alias viz="nvim ~/.zshrc"

#docker alias
alias doco='docker compose up -d'
alias docd='docker compose down'
alias dola='docker ls -a'
alias dovo='docker volumes ls'
alias donw='docker network ls'


# Update and upgrade system
alias update='sudo apt update && sudo apt upgrade -y'

# Clear terminal
alias c='clear'

#Change ls 
alias ls='ls -a'
# List files in long format, including hidden files
alias ll='ls -alF'

# Navigate to the home directory
alias home='cd ~'

# Show disk usage in human-readable format
alias duh='du -sh *'

# Show free memory
alias meminfo='free -m -l -t'

# List all installed packages
alias pkglist='dpkg --get-selections | grep -v deinstall'

# Search for a package
alias pkgsearch='apt-cache search'

# Remove a package
alias pkgremove='sudo apt-get remove'

# Show IP address
alias ipinfo='ip -4 addr show'

# Reload the shell
alias reload='source ~/.zshrc'

# Check system uptime
alias uptime='uptime -p'

# Show current processes
alias psg='ps aux | grep'

# Shortcut for git status
alias gs='git status'

# Shortcut for git pull
alias gp='git pull'

# Shortcut for git push
alias gpush='git push'
# Aliases for grep

# Case-insensitive search
alias grep='grep --color=auto'  # Always show matches in color
alias grepci='grep -i'  # Case-insensitive search

# Recursive search
alias grepr='grep -r'  # Recursive search for a pattern in the current directory
alias grepri='grep -ri'  # Case-insensitive recursive search

# Show line numbers
alias grepl='grep -n'  # Show line numbers with matches
alias greplr='grep -nr'  # Recursive search with line numbers
alias greplri='grep -nri'  # Case-insensitive recursive search with line numbers

# Exclude binary files
alias grepb='grep --binary-files=without-match'  # Exclude binary files from search

# Search for whole words
alias grepw='grep -w'  # Search for whole words only

# Count occurrences
alias grepc='grep -c'  # Count the number of matches

# Invert match
alias grepv='grep -v'  # Invert match, show lines that do not match

# Combined options
alias grepiv='grep -iv'  # Case-insensitive invert match
alias grepwiv='grep -wiv'  # Case-insensitive whole word invert match

# Example usage:
# grepci "pattern" file.txt
# grepr "pattern" .
# greplr "pattern" .
# grepiv "pattern" file.txt
