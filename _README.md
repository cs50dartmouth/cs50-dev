# Overview

This repository contains files for configuring your CS50 development environment on the Thayer Computing systems.
Specifically, it contains the following:

* `README.md` - a file with these instructions, in 'Markdown' format.
* `dotfiles` - a directory with 'dot' files for your home directory; see [dotfiles/README.md](dotfiles/README.md).
* `shared` - a symbolic link to a shared directory of CS50 content provided by the instructor.

## Preparing your laptop

You cannot connect to Thayer's Linux servers unless you are connected to the Dartmouth campus network; if you are off campus, connect your laptop to Dartmouth's [VPN](https://services.dartmouth.edu/TDClient/1806/Portal/KB/?CategoryID=13404).

## Preparing for Linux development

1. Open a Terminal window:

	* on **MacOS**, launch `Terminal` from the Utilities folder (inside the Applications folder)
	* on **Windows**, launch `Windows Command Prompt`

2. In that Terminal window, you will see a prompt, likely ending in `$`.  After that prompt, type the following command but substitute your Dartmouth NetID:

	```bash
	ssh d12345x@plank.thayer.dartmouth.edu
	```
	
	(The `ssh` command means 'secure shell', which opens a secure connection to server named `plank.thayer.dartmouth.edu` and launches the `bash` shell program under user id `d12345x`.)
	
	> If it reports "connection refused" or (after a long wait) "connection timed out", double-check that you are connected to Dartmouth's network or VPN.
	
	It will ask for your password; use your NetID password.
	It will pause briefly, warn you about your usage of disk space on the Thayer File System (ThayerFS), and then give you a command prompt; it will look something like this:
	
	```bash
	$ ssh d12345x@plank.thayer.dartmouth.edu
	d12345x@plank.thayer.dartmouth.edu's password:
	<< You are currently using 47.39M of your 5.00G home directory quota. >>
	d12345x@plank:~$
	```
	
3. You are now at *the command line*: the computer prints a prompt and waits for you to type a command.
	The prompt indicates you are user `d12345x`, logged into server named `plank`, and your *current working directory* is `~`, which is shorthand for your *home directory*.
	All of your files will live in your home directory (like a folder) or in subdirectories (like subfolders).

4. Type the command `copy_skel` to install the standard Thayer-issue `bash` configuration files:

	```bash
	d12345x@plank:~$ copy_skel
	```
	
	This program installs (or overwrites) the files  `.bashrc` and `.profile` in your home directory.
	**Important:** if you have used Thayer's Linux systems before, and have customized your copy of these configuration files, type `n` when the script asks to overwrite them; if you type `y` you will lose your customizations and begin with fresh Thayer-supplied default configuration.

5. Set up your GitHub account and provide GitHub a 'key' so your account on `plank` can access GitHub; follow these [instructions](https://www.cs.dartmouth.edu/~cs50/Logistics/github.html), and then return here.

6. Clone this repository into your home directory:
	<!-- @CHANGEME - insert term-specific repo link -->
	
	```bash
	d12345x@plank:~$ git clone git@github.com:cs50dartmouth/cs50-dev.git 
	```
	
	>@update the above link, using the term-specific https url

	The result is a subdirectory named `cs50-dev` in which you should do all your development for this course.

7. The repository contains some necessary extensions to the bash configuration files; update your bash configuration to invoke them when you next log in:

	```bash
	d12345x@plank:~$ echo source cs50-dev/dotfiles/bashrc.cs50 >> ~/.bashrc
	d12345x@plank:~$ echo source cs50-dev/dotfiles/profile.cs50 >> ~/.profile
	```
	
	These `echo` commands append a line to the bottom of each file.
	Within those files, the `source` command tells bash to read commands from the named file.

8. Copy our recommended files into your home directory:
	
	```bash
	d12345x@plank:~$ cp -i cs50-dev/dotfiles/emacs .emacs
	d12345x@plank:~$ cp -i cs50-dev/dotfiles/vimrc .vimrc
	d12345x@plank:~$ cp -i cs50-dev/dotfiles/gitconfig .gitconfig
	```
	
	**Important:** if you already had a Linux account on Thayer systems, and already had one or more of those dot files, `cp` will ask if you want to overwrite them; type `y` if you want to use our recommended file, and type `n` otherwise.
	You may want to compare our files to yours, and edit in our suggestions as you see fit.

9. To pick a preferred editor, edit `~/cs50-dev/dotfiles/profile.cs50` to uncomment one line defining `EDITOR`.

	> Read [about editors](https://www.cs.dartmouth.edu/~kotz/cs50/Logistics/systems.html#editors).

10. Finally, log out of plank (use the `exit` command to exit bash), and log back in using the `ssh` command from above.

	```bash
	d12345x@plank:~$ exit
	```

## Developing your code

Do all your work in the `c50-dev` folder.
Thus, after login, change your *current directory* (aka *working directory*) to the `cs50-dev` subdirectory:

```bash
d12345x@plank:~$ cd cs50-dev
d12345x@plank:cs50-dev$ 
```

From there, create or clone new git repositories for your coursework.


## More information

Much more information about the systems we use in CS50, including links to many other resources, can be found on the [systems page](https://www.cs.dartmouth.edu/~kotz/cs50/Logistics/systems.html) of the course website.
