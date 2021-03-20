# CS50 development environment

## THIS REPO IS DEPRECATED.

After constructing this branch, I decided to move this content into the [instructor repo](https://github.com/cs50dartmouth/instructor/tree/spring21) instead.
**Do not use this repo.**

## Old instructions
This repo and this README is **for instructors**.

This repo is a long-lived repository of the development environment prepared for CS50 students.
Each term we export the relevant files to a fresh repo, in the term-specific CS50 org, for the students to clone.
That way, the students' clones aren't burdened with unnecessary branches or commit histories from prior terms.

To prepare:

* Create a new, empty, public repo in the term-specific cs50 org; for example `cs50spring2021`.
* Copy its clone address, which will look like `git@github.com:cs50spring2021/cs50-dev.git`
* Clone it here, and give it a name, e.g.,
  ```
  git clone git@github.com:cs50spring2021/cs50-dev.git student-repo
  ```
* Edit `_README.md` to paste that clone address (search for @CHANGEME).
This file will become the README in the student repo.
* Edit `_README.md` with any other necessary updates.
* Edit the files in `dotfiles` with any necessary updates.
* **Important:** Replace the `shared` symlink with the new shared directory.

To export:

* Run the export script and give it the name of the target directory:
 `./export student-repo`
* If all went well, change into that directory, then push to GitHub.
 `cd student-repo ; git push`

For the record,

* commit and push your changes in this repo, too.

