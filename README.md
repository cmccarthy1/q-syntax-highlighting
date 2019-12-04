# Syntax highlighting in q-scripts

## Introduction

This repository contains code which is intended for use by new users to apply a standard syntax highlighter to q scripts in one of the following development environments. The syntax highlighters are sourced from community developers and are here as a centralized location for ease of installation. Highlighters for the following development environments can be installed using this repository.

| Dev environment | Author | Master Repository |
| --------------- | ------ | ----------------- |
| vim             | [Simon Garland](https://github.com/simongarland/) | https://github.com/simongarland/vim |
| atom            | [quintanar401](https://github.com/quintanar401) | https://github.com/quintanar401/language-kdb-q |

## Requirements

For each of the environments the associated package is required. For example in order to install the vim syntax highlighter vim must exist on the system.

## Installation

Installation is completed through execution of a shell script. Ensure that the shell script has execute permissions.

```bash
// Update the permissions
$chmod +x install.sh
// Run the vim install script
$./install.sh vim
File doesn't exist in $HOME/.vimrc, do you want to create it (y/n)? y
.vimrc file created in the appropriate location
Moving the appropriate files to the vim, do you want to continue (y/n)? y
All files have been moved to the appropriate location
Installation instructions followed exiting.
```

Installation instructions will be updated to add atom install instructions in the future
