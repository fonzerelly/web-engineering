# Software Development Process

??HORIZONTAL
## Waterfall vs Agile
img Hank the test failed can you carry a bucket of water up the hill, it seems the tests failed...

??NOTE
In the old days, more or less every software project has been structured like a waterfall. So you beginn with a kind of Feasability Study, you set up a project plan, you design, you test and you fail and start all over again from the beginning. Of course this does not happen all the time. But in fact working through all these hoops costs you much time to market. Often Projects fail, since the mind of the customer change in between. 

??HORIZONTAL
## Waterfall vs Agile
img Ski hut wtfs

??NOTE
So then at the beginning of the millenium, some important guys of the IT World met in a ski cottage and figured: "There must be a better way".
So they came up with those four principles.

??HORIZONTAL
* Individual and interactions over processes and tools

* Working software over comprehensive documentation

* Customer collaboration over contract negotiation

* Responding to change over following a plan

??NOTE
* Regarding that strict bondage to the waterfall needs to be better adapted. So even when you have a process or tools there might be the need to skip the process. For example when you know your deployment package has a wrong jpg inside do you really have to redo th
e complete process starting with a feasability study? Probably not. We know that usually that replaceing a jpg with another one of other content usually does not risk a failure of your software. 
* Uncle Bob made it clear in his book "clean code" it is much more valuable to have code that works properly and explains its tasks understandably instead of documenting too much. Because only the code is the truth. Updating documentation usually very often gets forgotten, so that it ages compared to the software it describes.
* When you apply usual project management, you will try to write everything you do for your customer in a contract. But when the customer changes her/his mind of what is important, than you start fighting the customer. 
* This does not help you nor your reputation. So better be prepared for change and try to fullfill the customers needs.


??HORIZONAL
## Scrum
??NOTE
Around these ideas, several incarnations have been created. There are Exreme Programming or Kanban to name a few. We will concentrate for now on scrum, which is the most widely used incarnation of agile I know.

??HORIZONTAL
### Roles
The Product Owner

??NOTE
The Product Owner is the one who has to get the basic idea about the product. In an ideal organization, she  or he would get a budget, a company goal and a team to realize that goal. According to that goal, he or she develops the vision of the product and thinks of what is necessary to make that vision true.
The Product Owner usually has to write the so called user stories and keeps in mind what is most necessary. She or he also takes care of all the stakeholders, that might have an interest into the project. Starting by the companies CEO to the state and its laws as well as the customers who should by the product. This is a big weight to carry. So the PO has to trust the team and the scrum master to get the project going.

??HORIZONTAL
### Roles
The Scrum Master

??NOTE
He is the person who should know the scrum master by heart. She or he has to protect the team from the stakeholders or even the PO but ensures there are specified possibilities to clearify tasks with the team. The Scrum Master also tries to remove technical problems out of the way. She or he also takes care about conflicts in the team and tries to help the team to improve their performance.

??HORIZONTAL
### Roles
The Team

??NOTE
The Team does the real work. It implements the features requested. It improves its work overtime in a selforganized manner. It commits to some goals specified in the sprint planning and this means that it does what it can to realize them. It consults the PO in what is possible and what is not.



??HORIZONTAL
### Meetings
Sprint Planning I

??NOTE
In this meeting the PO present her / his UserStories for the upcomming sprint. The Oder of the UserStories is important to reflect the priority specified by the PO. Together with the team, the PO specifies how many UserStories will be worked on and the team commits to this goal. Ideally the PO specifies a Sprint-Goal to clearify what is most important right now.

??HORIZONTAL
### Meetings
Sprint Planning II

??NOTE
After reviewing the software system and brainstorming about how to realize such a user story, the Team specifies small enough subtasks to detail what to do. Each Subtask should be realizable by one Team Member and should be realizable in one day.

??HORIZONTAL
### Meetings
The Daily

??NOTE
Everyday the Team and the ScrumMaster meet for about 10-15 Minutes to inform each other about each members progress. Possible Problems that a team member might encounter, have to be named and should be discussed and solved afterwards. This Meeting is for the team mate not the Scrum Master or the PO.

??HORIZONTAL
### Meetings
The Grooming / Storytime

??NOTE
This is the timeslot, the ScrumMaster gives the PO in the Sprint to ask the team about the feasability of a specific need. The PO presents what needs to be done, and the team 

??HORIZONTAL
### Meetings
The Review

??NOTE
In this meeting the Team presents ths sprint results to the PO and the PO accepts them or not. This is how you gain fast feedback and can react quickly to wrong developments.

??HORIZONTAL
### Meetings
The Retro

??NOTE
In the retro, the Scrum Master tries to find out the mood of the team and looks for ways to improve it. They should discuss what worked and what did not work and how to prevent problems in the future.

??HORIZONTAL
### Documents
Definition of Ready

??NOTE
This document is a kind of checklist, the Scrum-Team defines what has to be fullfilled before a story can be integrated into a sprint. This can define some rules for a user story and / or what has to be  clearified before the story can be worked on.  For example you might define here that you only start working on a story when the interface of a depending module is finite. It is also a template for the user story.


??HORIZONTAL
### Exercise DoR
??NOTE
Now let us what do you think should be part of a user Story?
* ID
* Title
* Who / Role
* What / Need
* When / Context
As a <Role> I <Need> when <Context>
* Acceptance Criteria
* Estimation



??HORIZONTAL 
## Documents
Definition of Done

??NOTE
This checklist contains what has to be done to finish a User Story. Not only the implementation, it can specify that there should be unit tests, integration tests, acceptance tests or documentation.

