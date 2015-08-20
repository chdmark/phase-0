## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?

In this assignment, I learned about using git to track changes, the pull request workflow, best practices for commit messages, and commits. While I am still trying to nail the process down, I have a better understanding of the entire process. I needed to updated my reflections.md file a second time because the header for section 1.4 was not updated. However, GitHub did not automatically give me a pull request option. I went to office hours and John was able to show me how to manually pull the request because I did update it properly. 

Tracking and adding changes makes developers' lives easier because it shows what you did when you were working on a specific project. When there are multiple people working on the same project, there could be confusion and inefficiency. Git helps teams collaborate more effectively and work more efficiently. Developers could see if you made any changes and why you made those changes; it gives more clarity to the team. In addition, people on the team could work on the same project and on different focuses without affecting the master file. 

A commit is basically saving changes to your project anytime you want. It is essentially clicking the save button on a word or excel spreadsheet. Instead of constantly auto-saving the project, you get to control when you save it. When you commit, it is good practice to include a message describing what changes you made. You should use the imperative form because it tells people what the commit will do. The first line of a commit message should be 50 characters or less, and should indicate what the message is about with clarity. The body of the commit message should be less than 70 characters and describes what you did and changes from the previous project. 

The head argument is the size of the headers. The above headliner indicates the "H2" size. The headers range from "H1 to H6". 

There are 3 stages of a git change: working, staged, and commit. The working stage is the directory where you modifying your files whether it be changing things or adding things. Most of the work is done in here. The next stage is the staging area. This is where you want to add your saved work and want to add snapshots to the staging areay. To get to this area, you type "get add". The last stage is commit. This takes your files from the staging area and is where the files are permanantly stored in your Git directory. WHen you commit, you also write a commit message to say what you did. To commit, type "git commit -m "your message here"". 

In short, there are three stages:
-working
-staged : git add
-commit : git commit -m 

In order to create a pull request, you must push your recent work from your remote repository. You also have to be on a feature branch instead of the master branch. A pull request is a request to merge your changes into the master branch. Instead of merging immediately to the master branch, a pull request lets team members review your work before merging it to the master branch. This is helpful when a supervisor wants to review your work before submitting the changes. You push your feature branch to your remote repository on GitHub by typing "git push origin feature-branch-name". To merge your pull request with the master branch, login to GitHub and click the "create pull request" button and then "merge pull request" button. 