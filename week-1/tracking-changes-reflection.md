## Tracking Changes Reflection

- Tracking and adding changes make developers' lives easier by providing checkpoints in case of bugs. Developers can always go back to the latest commit while they debug their code.
- Commits are the save points. When developers commit a change, they're creating a checkpoint in which they can always go back to look at the state of the file at that point.
- The best practices for commit messages are using imperatives, writing a short summary with 50 characters or less, and a more detailed explanation if necessary.
- HEAD^ stands for the last commit and is used in the command **git reset --soft HEAD^** for redoing an added file into an untracked file.
- The 3 stages of a git change are:
    1. Making changes to a file by adding or editing it in a working directory
    2. Adding the change to stage it for a commit
    3. Commiting or creating a save point to signify all the changes done since the last commit
- Here are the commands needed to commit a change:
      git pull
      git checkout -b branch_name
      git add
      git commit -m "commit message"
      git push origin branch_name
      git checkout master
      git fetch origin master
      git merge origin/master
- A pull request is like gaining permission before merging changes. It allows you to review work before making the change permanent. To create and merge a pull request you have to push the branch with the change to github and follow instructions there.
- Pull requests are preferred when working with teams because they allow members to review eachothers' works.


