# Software Development Process

??HORIZONTAL
 <img src="development_process/images/Waterfall-PM_1.jpg" width="85%">

??NOTE
In the old days, more or less every software project has been structured like a waterfall. So you beginn with a kind of Feasability Study, you set up a project plan, you design, you test and you fail and start all over again from the beginning. Of course this does not happen all the time. But in fact working through all these hoops costs you much time to market. Often Projects fail, since the mind of the customer change in between. 

??HORIZONTAL
## Agile Manifesto
<img src="development_process/images/agile-manifesto_1.jpg" width="60%">

??NOTE
So then at the beginning of the millenium, some important guys of the IT World met in a ski cottage and figured: "There must be a better way".
So they came up with those four principles.

??HORIZONTAL
## Agile Manifesto
<img src="development_process/images/agile-manifesto_2.jpg" width="60%">

??NOTE
Regarding that strict bondage to the waterfall needs to be better adapted. So even when you have a process or tools there might be the need to skip the process. For example when you know your deployment package has a wrong jpg inside do you really have to redo the complete process starting with a feasability study? Probably not. We know that usually that replaceing a jpg with another one of other content usually does not risk a failure of your software. 

??HORIZONTAL
## Agile Manifesto
<center><img src="development_process/images/agile-manifesto_3.jpg" width="60%"></center>

??NOTE
Uncle Bob made it clear in his book "clean code" it is much more valuable to have code that works properly and explains its tasks understandably instead of documenting too much. Because only the code is the truth. Updating documentation usually very often gets forgotten, so that it ages compared to the software it describes.


??HORIZONTAL
## Agile Manifesto
<center><img src="development_process/images/agile-manifesto_4.jpg" width="60%"></center>

??NOTE
When you apply usual project management, you will try to write everything you do for your customer in a contract. But when the customer changes her/his mind of what is important, than you start fighting the customer.

??HORIZONTAL
## Agile Manifesto
<center><img src="development_process/images/agile-manifesto_5.jpg" width="60%"></center>

??NOTE
This does not help you nor your reputation. So better be prepared for change and try to fullfill the customers needs.


??HORIZONTAL
<img src="development_process/images/01_Scrum.jpg">
??NOTE
Around these ideas, several incarnations have been created. There are Extreme Programming or Kanban to name a few. We will concentrate for now on scrum, which is the most widely used incarnation of agile I know.

??HORIZONTAL
<img src="development_process/images/02_Scrum_PO.jpg">
??NOTE
The Product Owner is the one who has to get the basic idea about the product. In an ideal organization, she  or he would get a budget, a company goal and a team to realize that goal. According to that goal, he or she develops the vision of the product and thinks of what is necessary to make that vision true.
The Product Owner usually has to write the so called user stories and keeps in mind what is most necessary. She or he also takes care of all the stakeholders, that might have an interest into the project. Starting by the companies CEO to the state and its laws as well as the customers who should by the product. This is a big weight to carry. So the PO has to trust the team and the scrum master to get the project going.

??HORIZONTAL
<img src="development_process/images/03_Scrum_ScrumMaster.jpg">
??NOTE
This is the person who should know the scrum process by heart. She or he has to protect the team from the stakeholders or even the PO but ensures there are specified possibilities to clearify tasks with the team. The Scrum Master also tries to remove technical problems out of the way. She or he also takes care about conflicts in the team and tries to help the team to improve their performance.

??HORIZONTAL
<img src="development_process/images/04_Scrum_Team.jpg">

??NOTE
The Team does the real work. It implements the features requested. It improves its work overtime in a selforganized manner. It commits to some goals specified in the sprint planning and this means that it does what it can to realize them. It consults the PO in what is possible and what is not.

??HORIZONTAL
<img src="development_process/images/05_Scrum_Sprint.jpg">

??NOTE
The Sprint is a returning timebox. It has a massive impact on the idea of scrum. It sais meanwhile this timebox the team has to be able to work without disturbance. In addition, the team commits to finish a specifc amount of features in that timebox.

??HORIZONTAL
<img src="development_process/images/06_Scrum_Planning_I.jpg">

??NOTE
In this meeting the PO present her / his UserStories for the upcomming sprint. The Oder of the UserStories is important to reflect the priority specified by the PO. Together with the team, the PO specifies how many UserStories will be worked on and the team commits to this goal. Ideally the PO specifies a Sprint-Goal to clearify what is most important right now.

??HORIZONTAL
<img src="development_process/images/07_Scrum_Planning_II.jpg">


??NOTE
After reviewing the software system and brainstorming about how to realize such a user story, the Team specifies small enough subtasks to detail what to do. Each Subtask should be realizable by one Team Member and should be realizable in one day.

??HORIZONTAL
<img src="development_process/images/08_Scrum_Grooming.jpg">

??NOTE
This is the timeslot, the ScrumMaster gives the PO in the Sprint to ask the team about the feasability of a specific need. The PO presents what needs to be done, and the team estimates how complicate this can be. This will be done by Planning Poker

??HORIZONTAL
<img src="development_process/images/09_Scrum_Daily.jpg">

??NOTE
Everyday the Team and the ScrumMaster meet for about 10-15 Minutes to inform each other about each members progress. Possible Problems that a team member might encounter, have to be named and should be discussed and solved afterwards. This Meeting is for the team mate not the Scrum Master or the PO.




??HORIZONTAL
<img src="development_process/images/10_Scrum_Impediment.jpg">

??NOTE
There are times, when your team depends on the work of others, that is not finished yet. Or if there are technical problems that keep the team from working, like the VCS fails. Then we call this an impediment. Impedements may happen and can block the workflow of the team. They have to be prevented as far as possible. This is one of the tasks of the ScrumMaster to get impediments out of the way. 

??HORIZONTAL
<img src="development_process/images/11_Scrum_Review.jpg">

??NOTE
In this meeting the Team presents its sprint results to the PO and the PO accepts them or not. This is how you gain fast feedback and can react quickly to wrong developments.

??HORIZONTAL
<img src="development_process/images/12_Scrum_Retro.jpg">

??NOTE
In the retro, the Scrum Master tries to find out the mood of the team and looks for ways to improve it. They should discuss what worked and what did not work and how to prevent problems in the future.

??HORIZONTAL
<img src="development_process/images/13_Scrum_Backlog.jpg">

??NOTE
This is the prioritized collection of UserStories that shall be implemented in the long run. The Backlog might grow over time.

??HORIZONTAL
<img src="development_process/images/14_Scrum_DoR.jpg">

??NOTE
This document is a kind of checklist, the Scrum-Team defines what has to be fullfilled before a story can be integrated into a sprint. This can define some rules for a user story and / or what has to be  clearified before the story can be worked on.  For example you might define here that you only start working on a story when the interface of a depending module is finite. It is also a template for the user story.


??HORIZONTAL
<img src="development_process/images/15_Scrum_WorkingIncrement.jpg">

??NOTE
The Working Increment is the state of the product after one Sprint. The important thing is, that after every Sprint, there has to be something that is working. And if you decide to end the project tomorrow, then this increment should be shipable.

??HORIZONTAL 
<img src="development_process/images/16_Scrum_DoD.jpg">

??NOTE
This checklist contains what has to be done to finish a User Story. Not only the implementation, it can specify that there should be unit tests, integration tests, acceptance tests or documentation. What might be part of the DoD will be part of the next lecture.


??HORIZONTAL
# Scrum Exercises

??HORIZONTAL
### Exercise DoR
??NOTE
Now let us what do you think should be part of a user Story?
* ID
* Title
* Who / Role
* What / Need
* When / Context
As a &lt;Role&gt; I &lt;Need&gt; when &lt;Context&gt;
* Accepptance Criteria: What should happen
* Examples:
 * Context 
 * Action 
 * Outcome
* Estimation

??HORIZONTAL
<table>
<tr>
<td>
<img src="development_process/images/youtube-example.png">
</td>
<td width="30%">
<h2>Exercise UserStory</h2>
<h3>Please write a UserStory that might have been used to define the
functionality of the red “Abonnieren”-Button (subscription-Button) on the
left below the video image.
</h3>
</td>
</tr>
</table>
??NOTE
Title: Subscribe to a YouTube-Channel
Description: As a YoutubeUser I want to be informed about new videos from the
author that I am currently watching.
Acceptance Criteria:
  * The Channel gets stored in the Users Profile
  * The Button should turn into gray
  * The Button should display the number of all subscriptions
  * When the User is not logged in, it should open googles LogIn-Window

Examples:
Context:            Action:             Outcome:
User is loggedin    User clicks         "Abbonieren"-Button turns gray 
Watches Video of HS abbonieren          Channels is stored in Profile
User not subscribed

??HORIZONTAL
## Scratch-Introduction

??HORIZONTAL
## Scratch Exercise Hexenwald
<a href="https://teach.appcamps.de/karten-code/aHR0cHM6Ly90ZWFjaC5hcHBjYW1wcy5kZS9rYXJ0ZW4vczNoZXhl">Lernkarten</a>

??HORIZONTAL
<table>
<tr>
<td>
<img src="development_process/images/Planning_Poker_Tshirt.png" width="50%">
</td>
<td width="30%">
<h1>Planning Poker T-Shirt-Sizes</h1>
</td>
</tr>
</table>

??HORIZONTAL
## Scratch Space Invaders
<a href="https://scratch.mit.edu/projects/319813125/">My SpaceInvaders Solution</a>

??HORIZONTAL
## Scratch Space Invaders I
As user I want to see appealing UFOs that attack the planet.

* UFOs have to have at least 4 colors
* UFOs has to be animated to look rotating


??HORIZONTAL
## Scratch Space Invaders II
As user I want the UFOs to be moving in a group of 4 * 3 from the left screen boarder to the right screen border.

* When green flag gets clicked, the UFOs should start to move from left to right and vice versa.
* The UFOs must 


??HORIZONTAL
## Scratch Space Invaders III
As a user I want a robot on the ground to be moveable by pressing left- and right-key.

* When Left-Key is pressed move Robot to left
* When Right-Key is pressed move Robot to right

??HORIZONTAL
## Scratch Space Invaders IV
As a user I want the robot to be able to shoot a laser beam when whitespace is hit.

* When Whitespace is hit, the Robot should trigger a laserbeam.
* The Laserbeam should go from the current position of the robot to the top of the screen

??HORIZONTAL
## Scratch Space Invaders V
As a user I want a UFO to be destroyed, when it collides with a laser beam 

* When a laser beam hits a UFO the UFO should be removed
* Short before removement, the UFO should show a ball of fire to visualize an explosion

??HORIZONTAL
<table>
<tr>
<td>
<img src="development_process/images/Planning_Poker.png" width="50%">
</td>
<td width="30%">
<h1>Planning Poker Fibunacci Numbers</h1>
</td>
</tr>
</table>


??HORIZONTAL
## Burn-Down-Chart

??NOTE
In the Burn-Down-Chart you can see the trend how good you can full fill you commitment. But you can also see the velocity and over the time see if your performance improves or not.

??HORIZONTAL
## Github
* Create Github-Account
* Define Collaborators
* Write Issue
* Write Wiki-Entry


??HORIZONTAL
## Your Task until next time
* Create User Stories for your Poject according to the topic you have choosen.