# Overview
Below are important links for setting up your development environment, cloning lab assignments, and general guidance for writing and building programs.

## Preparing your development environment on your laptop

Do one of these:
- [Setup Your Development Environment For OSX](setup/osx-setup.md)
- [Setup Your Development Environment For Windows](setup/windows-setup.md)

then continue with the following:

## Setting up your `plank.thayer.dartmouth.edu` environment

Follow these steps to get setup on `plank`.

1. login to `plank`:  

	```bash
	ccpalmer@bayou: ~/ {} $ ssh d29265d@plank.thayer.dartmouth.edu
	d29265d@plank.thayer.dartmouth.edu\'s password:

	 << You are currently using 47.39M of your 5.00G home directory quota. >>

	d29265d@plank:~$
	```

2. Clone the `cs50-dev`  repository from GitHub:  

	```bash
	d29265d@plank:~$ cd
	d29265d@plank:~$ git clone https://github.com/CS50Dartmouth21W/cs50-dev.git
	Cloning into 'cs50-dev'...
	Username for 'https://github.com': ccpalmer
	Password for 'https://ccpalmer@github.com':
	remote: Enumerating objects: 631, done.
	remote: Counting objects: 100% (631/631), done.
	remote: Compressing objects: 100% (296/296), done.
	remote: Total 631 (delta 357), reused 601 (delta 327), pack-reused 0
	Receiving objects: 100% (631/631), 12.19 MiB | 24.43 MiB/s, done.
	Resolving deltas: 100% (357/357), done.
	d29265d@plank:~$
	```

3. Change directory to the newly-created directory `cs50-dev/setup` and run `myplank-setup.sh`:

	```bash
	d29265d@plank:~$ cd cs50-dev/setup/
	d29265d@plank:~/cs50-dev/setup$ ls
	media  myplank-setup.sh  osx-setup.md  packages  windows-setup.md
	d29265d@plank:~/cs50-dev/setup$ rm -rf media
	d29265d@plank:~/cs50-dev/setup$ ./myplank-setup.sh
	Installing dot files...
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/bash_logout To: /thayerfs/home/d29265d/.bash_logout
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/bashrc To: /thayerfs/home/d29265d/.bashrc
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/bashrc.default To: /thayerfs/home/d29265d/.bashrc.default
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/emacs To: /thayerfs/home/d29265d/.emacs
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/gitconfig To: /thayerfs/home/d29265d/.gitconfig
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/gitignore_global To: /thayerfs/home/d29265d/.gitignore_global
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/README.md To: /thayerfs/home/d29265d/.README.md
	Copying: /thayerfs/home/d29265d/cs50-dev/dotfiles/plank/vimrc To: /thayerfs/home/d29265d/.vimrc

	myplank-setup complete!  
	d29265d@plank:~/cs50-dev/setup$ cd  
	d29265d@plank:~$ pwd  
	/thayerfs/home/d29265d  
	d29265d@plank:~$ logout  
	logging out...  
	Connection to plank.thayer.dartmouth.edu closed.  
	$  
	```

## Downloading Lab Assignments
You will be using `plank` to compile and test your lab assignments. Assignments will be handed out and managed via GitHub classroom. For every assignment, you will be sent a link for GitHub classroom that will instantiate a new repository for you. You will use these repositories to complete the lab and to submit your work. The process for cloning a new assignment repo to your computer is detailed below.

> Note: you can submit your work to the assignment repo using `git push` from either the `plank` system or from your own system.  However, we recommend that you do the `git push` from the `plank` system since that is where you will be developing your solution.  That way you can be sure that you are sending the right code to GitHub.  You can always maintain a copy on your own system.

1. Click on the GitHub Classroom assignment link on Canvas for the lab you are working on. You will be redirected to a page like the one pictured below.

![download-lab-1](./setup/media/download-lab-1.png)

2. After clicking accept, GitHub Classroom will create a repository to hold the code for your assignment. Click the URL following "Your assignment has been created here:" to view your new assignment repo.

![download-lab-2](./setup/media/download-lab-2.png)

3. On your repo page, copy the HTTPS URL from the _quick setup_ section.

![download-lab-3](./setup/media/download-lab-3.png)

4. Open **Terminal** and connect to the `plank` system.
Once you are logged in, create your `cs50` directory and move into it. Once you are in the `cs50` directory clone your assignment repo. Use the following commands to do this (**NOTE: Remember to replace URL with the URL you copied from your assignment page**). Afterwards, you can use `ls` to check that your assignment repo was cloned to thee `cs50-dev` folder.

	```bash
    $ mkdir -m 700 ~/cs50-dev
	$ cd ~/cs50_dev
	$ git clone URL
	```

	![download-lab-5](./setup/media/download-lab-5.png)

5. Editing files for your Lab assignments

	You have two ways to edit your files.  

	First, you can do all of your editing directly on `plank` by starting the VPN, using `ssh` to connect to	`plank`, and then using a common editor like `vi` or `emacs -nw`.  There are many tutorials on the Internet for both.  With this direct option you never have to worry about which copy of a file is the latest (on `plank` or your system).  However, you always need to be connected (VPN and `ssh`) in order to do your work.  

	Second, you can edit your files locally (on your laptop). You will need a means of getting your files to and from `plank`.  There are a few general approaches, all assuming you have the VPN running.

	a. **Local edit and automatic copy**  
	Some editors and tools enable you to run an editor on your system that will allow you to _directly_ edit files on the `plank` system.  These are essentially doing an `scp` to your system when you open the file and another `scp` back to `plank` if you save any changes. Editors like Atom (free), Sublime Text($), VSCode(free), and others can be configured this way. I use [Atom](https://atom.io) with the built-in `git` tools and the [ftp-remote-edit package](https://atom.io/packages/ftp-remote-edit) for this class.

	b. **Local edit and copy**  
	Do all your editing locally and use `scp` (Secure CoPy) from a terminal each time you want to edit a specific file:

	```bash
	$ scp dxxxxxd@plank.thayer.dartmouth.edu myfile.c
	$ ... edit myfile.c ...
	$ scp myfile.c dxxxxxd@plank.thayer.dartmouth.edu
	```
	where `dxxxxxd` is your Dartmouth netid.  

	c. **Local edit and copy ALL**  
	Using `scp -r` or a free tool like [`Filezilla`](https://filezilla-project.org) to bulk copy everything from the `plank` system to yours and back securely.

## Writing Code
After cloning your GitHub Classroom assignment repo, you can start writing code and testing it on `plank`.

**Remember**: You need to make sure that your code compiles and runs correctly on the `plank` system.
You can edit your files locally on your own system, but your compiling and testing should always be on `plank`.
