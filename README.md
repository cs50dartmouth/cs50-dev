# Overview

CS50 configuration files for Linux.

> **Note to instructors:**
> This repository should be cloned into `/thayerfs/courses/TERM/cosc050/cs50-dev`,
> where `TERM` is name of the term the course will be offered (e.g., `21spring`).

This repository contains files for configuring your CS50 development environment on the Thayer Computing systems.
Specifically, it contains the following files:

* `dotfiles` - the 'dot' files you should install in your home directory, and a script to automatically set up your home directory if you're new to Linux.
* `gitignore` - a template for the `.gitignore` file to be used when you create a new, empty git repository.

## Preparing your laptop

You cannot connect to Thayer's Linux servers unless you are connected to the Dartmouth campus network; if you are off campus, connect your laptop to Dartmouth's [VPN](https://services.dartmouth.edu/TDClient/1806/Portal/KB/?CategoryID=13404).

## Preparing for Linux development

Open a Terminal window:
	* on **MacOS**, launch `Applications/Utilities/Terminal`
	* on **Windows**, launch `Windows Command Prompt `

In that Terminal window, you will see a prompt, likely ending in `$`.  After that prompt, type the following command but substitute your Dartmouth NetID:

```bash
ssh d12345x@plank.thayer.dartmouth.edu
```

It will ask for your password; use your NetID password.
(The `ssh` command means 'secure shell', which opens a secure connection to server named `plank.thayer.dartmouth.edu` and launches the `bash` shell program under user id `d12345x`.)

It will pause briefly, warn you about your usage of disk space on the Thayer File System (ThayerFS), and then give you a command prompt for the `bash` shell on `plank`

```bash
$ ssh d12345x@plank.thayer.dartmouth.edu
d12345x@plank.thayer.dartmouth.edu's password:
<< You are currently using 47.39M of your 5.00G home directory quota. >>
d12345x@plank:~$
```

Run our configuration script to install the standard Thayer-issue `bash` configuration files (if needed) and our CS50-specific configuration files for bash and other related programs:

```bash
d12345x@plank:~$ /thayerfs/courses/21spring/cosc050/cs50-dev/dotfiles/setup
```

It will print an explanation as it goes.
**Important:** if you have used Thayer's Linux systems before, and have customized your `.bashrc`, `.profile`, or other configuration files, type `n` when our script asks to overwrite them; if you type `y` you will lose your customizations and begin with fresh Thayer-supplied default configuration.


## Developing on your laptop

**In CS50 we support development only on Thayer's Linux systems.**
Linux systems differ in subtle ways; MacOS is a form of Unix different from Linux, and Windows is even more different.

Even so, some students may find it convenient to develop code on their own laptop, and later test it on `plank`.
If you wish to configure your Mac or Windows laptop for development, download the `dotfiles` directory from this repository and integrate their contents into the corresponding configuration files within the Unix environment on your laptop.
For example, on your laptop, edit the default `.bashrc` file to include the contents of `dotfiles/bashrc.cs50` from this repository.

**Remember**: You need to make sure that your code compiles and runs correctly on the `plank` system.
You can edit your files locally on your own system, but your compiling and testing should always be on `plank`.
Our graders will use `plank` for all testing; it doesn't matter whether your programs compiled or ran on your laptop.
