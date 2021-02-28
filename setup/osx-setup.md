# Setup Your Development Environment For OSX

1. If you have a GitHub userid, skip to step 3.  

2. Create a [GitHub account](https://github.com) using your Dartmouth email (e.g., "dxxxxxd@dartmouth.edu" or "name.mi.last.yr@dartmouth.edu") and a GitHub shortname of your choice (e.g., "eyebeemma", "frodo", etc.)

<!--<img src="./media/github-sign-up.png" alt="github-sign-up"
	title="Github Sign Up"/>-->

3. We need to configure SSH keys for pulling and pushing code with your new GitHub account. First, check to see if you already have an existing ssh key. Open the **Terminal** application, which is located at `Applications/Utilities`. Copy and paste the following command into terminal and press *enter* (⏎). This will list your ssh key files (if they exist). If the command below shows you **DO NOT** not have any keys, you will receive a `No such file or directory` message in response. If you **DO** have an existing key with the name `id_rsa.pub`, you should skip to step 5.

	```bash
	ls -al ~/.ssh
	```

4. If you **DO NOT** have an existing ssh key, then you need to generate one. Copy and paste the below command into the terminal, substituting the email address you used to signup at Github **before** pressing *enter* (⏎). When you're prompted to "Enter a file in which to save the key," press *enter* (⏎). When you're prompted to "Enter passphrase (empty for no passphrase)" press *enter* (⏎) two more times. Here is an example output from generating an ssh key:

	```
	ssh-keygen -t rsa -b 4096 -C "your_email@dartmouth.edu"
	```

![ssh-generation](./media/ssh-generation.png)

5. After generating your new ssh key, you need to add it to your GitHub account.
Copy your ssh key to your clipboard using the command below:

	```bash
	pbcopy < ~/.ssh/id_rsa.pub
	```

6. Open a browser and navigate to [GitHub](https://www.github.com). After logging in, click on your profile photo in the upper-right corner of the page and navigate to **Settings/SSH and GPG Keys/New SSH key**.

![ssh-add-key-1](./media/ssh-add-key-1.png)

7. In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal Mac, you might call this key "Personal MacBook Air". Paste your key into the "Key" field. Click **Add SSH Key**.

![ssh-add-key-2](./media/ssh-add-key-2.png)

8. Open the **Terminal** application. Copy and paste the command below and press *enter* (⏎) to clone the `cs50-dev` repository onto your Mac. You may receive a warning when you try to use git, like the one shown below. Go ahead and click install to install command line developer tools.

	```bash
	cd && git clone git@github.com:CS50Dartmouth21W/cs50-dev.git cs50-dev
	```

	![git-clone-2](./media/git-clone-2.png)

9. Some have seen a different error stating `invalid active developer path` when attempting to clone the repo. If you see this, run the following command to install **Xcode command line tools**.

	```bash
	xcode-select --install
	```

10. After installing the command line tools, rerun the git clone command from step 8. If prompted with `Are you sure you want to continue connecting (yes/no)?` type `yes` and press *enter* (⏎).

![git-clone-1](./media/git-clone-1.png)

You now have a clone of the cs50-dev repository on your Mac.  


<!-- --- this should be the end --- -->
<!--

11. Afterwards, paste the following command into **Terminal** and press *enter* (⏎). When prompted by the script, press *enter* (⏎) again.

```
cd ~/cs50-dev && ./setup/osx-bootstrap.sh
```

<img src="./media/bootstrap-1.png" alt="bootstrap-1"
	title="Bootstrap"/>

12. If prompted, enter the password for your computer (not GitHub account). **NOTE: when typing the characters in your password will not appear, but they are in fact being read.**

<img src="./media/bootstrap-2.png" alt="bootstrap-2"
	title="Bootstrap"/>

13. Some of those with Homebrew already installed have seen an error related to not being able to `create leading directories of /usr/local/Homebrew/...`. If you see this error, copy and paste the following command into **Terminal** and then rerun the boostrap script.

```
sudo chown -R "$USER":admin /usr/local/homebrew
# You will be asked to enter your computer's password
# After this completes, rerun the bootstrap script with the following command
./setupt/osx-bootstraph.sh
```

<img src="./media/homebrew-error.png" alt="homebrew-error"
	title="Homebrew Error"/>

13. At some point during the bootstrap process you may receive a popup (pictured below) blocking a system extension. You should click `Open Security Preferences` and then click `Allow`.

<img src="./media/bootstrap-3.png" alt="bootstrap-3"
	title="Bootstrap"/>

14. After clicking `Allow`, navigate back to your **Terminal** window and rerun the command from Step 9 (shown below). *This bootstrap process will take a while (~5-15 minutes depending on your internet connection)*. You should see "bootstrap complete" when the process is finished.

```
cd ~/cs50-dev && ./setup/osx-bootstrap.sh
```

<img src="./media/bootstrap-4.png" alt="bootstrap-4"
	title="Bootstrap"/>

15. After the installation script runs, read through its output to see if it printed any warnings or errors. It should end with "bootstrap complete", if it was successful. If not, please use the "Vagrant-MacOS" forum on Piazza to ask for help. You will most likely also see output related to **Guest Additions** (shown in second picture). As long as you do not have any glaring errors, output similar to what is shown below is fine.

<img src="./media/bootstrap-5.png" alt="bootstrap-5"
	title="Bootstrap"/>

<img src="./media/guest-additions.png" alt="guest-additions"
	title="Guest Additions"/>
-->
