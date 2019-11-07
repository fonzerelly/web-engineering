# Version Control

??HORIZONTAL
<img src="version_control/images/save_game_1.jpg" width="75%">
??NOTE
Did  you ever played Video Games? In more detail, did you ever played a RPG (Role Play Game), where you fight monsters with a sword and cast magic spells from time to time? You fight level for level. With lots of drawbacks. When you die you have to begin the level again without your goodies. This can get the feeling of work, if you encounter an end opponent that always kills you. So you try and try again, but without your collection of goodies it is merely impossible to win. So what do you do short before you encounter an end opponent?

??HORIZONTAL
<img src="version_control/images/save_game_2.jpg" width="75%">

??NOTE
Of course you safe the game state short before, so that you do not have to redo the complete level. If you loose, you just reload that game state. And if you play a very hard EgoShooter, where each bullet count, you might safe much more often. 

??HORIZONTAL
<img src="version_control/images/git.png">
??NOTE
This is where a VersionControllSystem like git comes in. When you programm, you might encounter very hard end opponents, like this very complex algorithm, that you are evan afraid of touching it. So you want to preserve the state of your code, to be able to come back to an earlier state when you seem to have corrupted your code.
Git keeps Track of your code for you. It stores only the differences from version to version, so that it does not take a lot of harddisk, but you can return when ever you want. 

??HORIZONTAL
```
$ git init
```
??NOTE
So the first thing, when you have git installed, to do is git init. It will create a hidden .git-Directory in the directory that you want to bring under version control. There all that changes, the history of your files will be stored there.

??HORIZONTAL
```
$ git clone <url>
```
??NOTE
Or if somebody in your team already prepared a repository, then you can clone it, to have your local copy and work on it.

??HORIZONTAL
```
$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        main.bak
        main.js

no changes added to commit (use "git add" and/or "git commit -a")

```
??NOTE
Before you store something into git you have to select it. So always have a look at which potential changes git recognizes. For example where does this main.bak file comes from? Maybe it is a safety storage of my editor or IDE. I do not want to have such a file in my repo, it would distract me and my team mates of what is relevant for the project. 

??HORIZONTAL
### .gitignore
```
*.bak
```
??NOTE
To prevent files from being stored in git, I can ignore them by creating a .gitignore file

??HORIZONTAL
```
$ git status
On branch master 
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)

        .gitignore
        main.js

no changes added to commit (use "git add" and/or "git commit -a")
```
??NOTE
Now git status does not show the .bak-file any more but it shows that we created a .gitignore file. Over time you might add much more directories or globbing-statements in there. So what kind of files should you prevent from being stored in git?

??HORIZONTAL
Usually you never store files in git, that can be reproduced by the computer.
* node_modules (installation packages) <!-- .element: class="fragment" -->
* compiled files (dist directory) <!-- .element: class="fragment" -->
* big binary chunks of data <!-- .element: class="fragment" -->

??NOTE
Of course every rule has an exception. We will see this exception, when we talk about github pages.

??HORIZONTAL
```
$ git diff
diff --git a/index.html b/index.html
index bc17378..90b6086 100644
--- a/index.html
+++ b/index.html
@@ -1,5 +1,7 @@
 <html>
     <body>
         <h1>Git Example</h1>
+        <h2 id="sub-header"></h2>
+        <script src="main.js"></script>
     </body>
 </html>
\ No newline at end of file
```
??NOTE
If you want to find out what has changed exectly, then you can call git diff.

??HORIZONTAL
```
$ git add .
```
??NOTE
So we know now, which files we will be "staged", when we add them to the stage. This means telling git that with the next commit you want to commit those two files. Here we selected the content of the current directory (.) but you could also add each file manually.
* This split of operations, this "staging"  is very important. Because it allows you to do so called atomic commits. If you change only one file in your repo, that another file depends on, then in the second you store your file, you break the system. Of course we do not want that. Or at least we do not want that status of code to be available to other. Everything you store in git, everything you commit should work with as much confidence as possible. We will talk about getting confidence later. 

??HORIZONTAL
```
$ git commit -m "<Ticket-ID> <short description>`"
```
??NOTE
After you staged your files you have to commit them. This is the moment, when git stores your changes locally and marks them with a hash. But the hash will not tell you as being human very much. With the options -m you can specify a message for your future self or your team mate. This is by the way what matters the most - making the code and everything around it as understandable as possible, so that your future you or your teammate can understand it as fast as possible. As we will see this can be very challenging. But here it just means:
Write a Ticket-Id for which this specific code-change was made and describe in a short sentence what change had been done.

??HORIZONTAL
## Anecdote Time...
??NOTE
Once I had a team mate who liked nothing more, than commiting about 30 Files together with hundreds of lines changed in one commit. And the commit message he left, was "Eins Zwei Polizei". Such a behaviour is an aggresive act of antisocialism and ignorance that I still feel pain in my stomach when I remember this a**hole...
So please make sure, I will never have to see such an idiotic commit message in your git history. 

But that save-functionality allone whould not be something, that would make git outstanding. Instead, its ability to allow collaboration makes it so outstanding. So imagine you are not only playing the RPG I mentioned earlier. Think of being a team, where each member does something different to fullfill the mission goal, similar to WorldOfWarcraft.

??HORIZONTAL
<img src="version_control/images/01_git_pearls_clone.png">
??NOTE
* In this image, each pearl represents such an atomic commit we introduced before. Such a row of perls we call branch. 
* It is possible to have several branches as you can see here
*  How and when you ue branches we call workflow. There are lots of possible workflows out there in the Internet. Have a look for yourself and decide what fits your team the best.
Do not forget to document such a decision

??HORIZONTAL
## Feature-Branch
```
$ git checkout -b <Ticket-ID>-<User-Story-Title-Without-Spaces>
```
??NOTE
I want to introduce one of the simplest collaborative workflows. When you start to work on a user story/ bugfix, you create a branch of that ticket-id and the ticket-title. Then you can work locally on that branch as long as you want. Without the -b parameter, you will not create a new branch, you can switch between banches.

??HORIZONTAL
<img src="version_control/images/02_git_pearls_feature_branch.png">

??NOTE 
What I did not mention until now, is that you up to that point only manipulated your own local version of the project. But there is another copy of it. This is in the central repository. In our case, this central copy is hosted at github. But Git would allow you to have the central repository on any kind of computer. If you would choose to work that way, you would have to take over the maintenance for that computer yourself. And ensuring that there is no dataloss, or that such a computer does not be attacked by hackers is a very big responsibility and explaining that is worth another lecture.

??HORIZONTAL
```
$ git push origin <Ticket-ID>-<User-Story-Title-Without-Spaces>
```
??NOTE
If you want to make sure, that your changes do not get lost (maybe due to errors in your laptops hardware), then you should push your data more often, like one time per day. At least when you think you are finished you have to push your branch to the central repository.

??HORIZONTAL
<img src="version_control/images/03_git_pearls_push.png">

??HORIZONTAL
## PullRequest
<img src="version_control/images/pull_request.png" width="100%">

??NOTE
When you think, that you are done, then you should create a pull request. A pull request can be seen as a proposal for the central repo. The intension here is, that somebody else but you reviews your changes and merges it. Reviewing has two outcomes
0. It helps to spread the knowledge about the application in your team, so that everybody can fix a bug or add a feature
0. It is another quality gate.

??HORIZONTAL
## Tipps for a code review
* check your DoD  <!-- .element: class="fragment" -->
* checkout that branch locally and evaluate the tests  <!-- .element: class="fragment" -->
* check if you easily understand the code changes  <!-- .element: class="fragment" -->
* if not, find together with the requester a refactoring  <!-- .element: class="fragment" -->

??HORIZONTAL
<img src="version_control/images/04_git_pearls_progress.png" width="100%">


??HORIZONTAL
<img src="version_control/images/05_git_pearls_merge.png" width="100%">


??HORIZONTAL
<img src="version_control/images/git_pearls_7.jpg" width="75%">


??HORIZONTAL
## Merge Conflict
<img src="version_control/images/master_vs_feature.png" width="100%">
??NOTE
Sometimes the merging in the GUI is not possible. This is the case when a merge conflict occures. This happens, when different commits compete and git can not decide which version is the right one. So maybe you have changed the same line in a file, that a teammate chanaged as well.



??HORIZONTAL
```
$ git checkout master
$ git pull origin master
$ git checkout <Ticket-ID>-<User-Story-Title-Without-Spaces>
$ git merge master

```
??NOTE 
To solve that, the requester has to reproduce that situation on her/his local setup:
0. checkout the relevant branch (in this case the master branch)
0. pull to have the latest version
0. checkout back to the branch where the error showed up
0. merge the master

??HORIZONTAL
```
Auto-merging index.html
CONFLICT (content): Merge conflict in index.html
Automatic merge failed; fix conflicts and then commit the result.
```
??NOTE
git will show you now that there was a merge conflict.


??HORIZONTAL
<img src="version_control/images/merge_conflict.png" width="75%">
??NOTE
What happens then is that it will write both Versions into the file, marked by Arrows. Please recognize that the first version contains your changes and the second one has the changes from the master branch.
Now you have to fix it. In the easiest way, you just delete one of the two versions. If the other change is also relevant then you have to take care of how to combine them. 
In any case, make sure that the arrows are deleted afterwards, which for most programming languages mean a syntax error.

??HORIZONTAL
```
$ git add .
$ git commit //will open text editor with prepared text for merge
$ git push origin <Ticket-ID>-<User-Story-Title-Without-Spaces>
```
??NOTE
When you now commit your changes and push them to the central repository, the merge conflict in the github gui will be vanished and you can merge the changes into the master branch.

??HORIZONTAL
```
$ git merge -abort
```
??NOTE
By the way, if you think that you somehow corrupted the merge or you feel that yourself can not solve the merge conflict so easy. Then you can abort the merge

