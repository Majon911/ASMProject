# ASMProject

Case Content
Instructions


This case is the Final Case Assignment, then it must be submitted in groups
Your submission must be in the form of a pdf document displayed inline on blackboard, no longer than 15 pages (including everything).
The networks are available in the same folder of this case




Case Study

In this case we will use the Lazega's dataset. The following is the description of the dataset from the Siena webpage:

"This data set comes from a network study of corporate law partnership that was carried out in a Northeastern US corporate law firm, referred to as SG&R, 1988-1991 in New England. It includes (among others) measurements of networks among the 71 attorneys (partners and associates) of this firm, i.e. their strong-coworker network, advice network, friendship network, and indirect control networks. Various members' attributes are also part of the dataset, including seniority, formal status, office in which they work, gender, law school attended, individual performance measurements (hours worked, fees brought in), attitudes concerning various management policy options, etc.

This dataset was used to identify social processes such as bounded solidarity, lateral control, quality control, knowledge sharing, balancing powers, regulation, etc. among peers.

The ethnography, organizational and network analyses of this case are available in Lazega (2001)."

Background

Try to have an answer to the following points to understand the context of the network:


"What do corporate lawyers do? 
Litigation and corporate work.
Division of work and interdependencies.
Three offices, no departments, built-in pressures to grow, intake and assignment rules.
Partners and associates: hierarchy, up or out rule, billing targets.
Partnership agreement (sharing benefits equally, 90% exclusion rule, governance structure, elusive committee system) and incompleteness of the contracts.
Informal, unwritten rules (ex: no moonlighting, no investment in buildings, no nepotism, no borrowing to pay partners, etc.).
Huge incentives to behave opportunistically ; thus the dataset is appropriate for the study of social processes that make cooperation among rival partners possible."


Data Sets
The networks you have were generated using a roster method, i.e. each worker of the lawfirm was given a list with the names of his/her co-workers:

"Here is the list of all the members of your Firm."

Then he/she was given three questions:


Strong coworkers network: "Because most firms like yours are also organized very informally, it is difficult to get a clear idea of how the members really work together. Think back over the past year, consider all the lawyers in your Firm. Would you go through this list and check the names of those with whom you have worked with. [By "worked with" I mean that you have spent time together on at least one case, that you have been assigned to the same case, that they read or used your work product or that you have read or used their work product; this includes professional work done within the Firm like Bar association work, administration, etc.]"


Basic advice network: "Think back over the past year, consider all the lawyers in your Firm. To whom did you go for basic professional advice? For instance, you want to make sure that you are handling a case right, making a proper decision, and you want to consult someone whose professional opinions are in general of great value to you. By advice I do not mean simply technical advice."


Friendship network: "Would you go through this list, and check the names of those you socialize with outside work. You know their family, they know yours, for instance. I do not mean all the people you are simply on a friendly level with, or people you happen to meet at Firm functions."


We have also added an extra data set:


Advice-Learning network: using as base the links from the advice network, we have generated a set of attributes to the links based on the tenure and the status of the lawyers. This network must be used to study the De Groot model for learning in networks. 


Encoding

The three networks are refered as work, friend and advice and have all the following list of attributes:


status (1=partner; 2=associate)
gender (1=man; 2=woman)
office (1=Boston; 2=Hartford; 3=Providence)
years with the firm
age
practice (1=litigation; 2=corporate)
law school (1: harvard, yale; 2: ucon; 3: other)


The learning_advice network contains the following edges attribute:


weight: a numerical factor (from 0 to 1) determining the weight of the importance that the actor in the row of the adjacency matrix gives to the opinions of the actor in the column. Note that in the adjacency matrix, the sum along the rows is 1 while along the columns is any number. 


Analysis

The analysis you have to perform is based on the ideas of groups and communities and network structure. For this you must answer, at least the following questions:


Determine the most relevant nodes in the networks. What is their role?
Would you say that any of the three networks was randomly generated? Why? If not what type of network are they then? What may that imply with respect to the lawfirm, the way the work, the way people behave or relate each other?


Explain the cohesion of the coworkers. Was it a firm with a high level of cooperation? Was it low?


 What was more common, an advice, a cowork or a friendship? What may this imply with respect to the lawfirm?
Do any of the properties (attributes) affect the generation of any kind of link? What doe it imply?
Determine the best algorithm to detect the communities in the network, then analyse the structure that arises from this. Compare it with the attributes of gender and office (maybe graphically is a good approach)


Overall, try to explain what is the behavioural and social dynamics in the lawfirm based on these points.

Once you have the previous analysis, we will proceed to perform the next ones:


Suppose that you want to analyse the network only from the professional perspective. Since the WORK network is decided by the firm, you will analyse the ADVICE network to determine if there are relevant patterns. For this, estimate an ERGM model for this network (note that in this case, you have a multiplex network and you may use the FRIEND and WORK networks as possible sources of Relational Effects).


Now analyse the diffusion processes. For this purpose we will only use the learning_advice network and we will simulate these two situations:


One lawyer has found that a specific procedure may give him/her some advantage. He wants this to be known in the firm for different reasons (personal promotion and better positioning of the firm itself, among others). Simulate how this innovation is diffused in the law firm network using an ICM with pure imitation conditions. 
There is a discussion inside the firm regarding a specific legal procedure. There are 5 different opinions in the firm. Simulate the evolution of these opinions using a DeGroot model with 6 iterations. Explain if a consensus is reached and why, and in it is reached, if it is the optimum one. Explain if you can identify any learning biases and what they imply in the law firm. 


Question 1
100 Points
Report

Remember that your report should not be just the answer of these questions, it should be written as a usual report: 


Introduction: Explain the problem and what you want to study, as well as expectations in the different parts of it
Analysis: A rigurous but non-technical explanation of the analyses carried along the work
Conclusions: A summary of the main conclusions
Bibliography: Anything you have used to make your study


The questions placed above must serve as a guide, but do not write the report as if it were a question-answer document, write it as a research paper.

Files needed:


The pdf with your analysis: no longer than 15 pages. Everything after that limit will not be considered
The R file with the computations. This must be attached to this assignment, otherwise the report will not be evaluated




The questions:  - 19 questions. 











Questions to be answered:
"What do corporate lawyers do?
Litigation and corporate work.
Division of work and interdependencies.
Three offices, no departments, built-in pressures to grow, intake and assignment rules.
Partners and associates: hierarchy, up or out rule, billing targets.
Partnership agreement (sharing benefits equally, 90% exclusion rule, governance structure, elusive committee system) and incompleteness of the contracts.
Informal, unwritten rules (ex: no moonlighting, no investment in buildings, no nepotism, no borrowing to pay partners, etc.).
Huge incentives to behave opportunistically; thus the dataset is appropriate for the study of social processes that make cooperation among rival partners possible.
Determine the most relevant nodes in the networks. What is their role?
Would you say that any of the three networks was randomly generated? Why? If not what type of network are they then? What may that imply with respect to the law firm, the way they work, the way people behave or relate to each other?
Explain the cohesion of the coworkers. Was it a firm with a high level of cooperation? Was it low?
What was more common, an advice, a cowork, or a friendship? What may this imply with respect to the law firm?
Do any of the properties (attributes) affect the generation of any kind of link? What does it imply?
Determine the best algorithm to detect the communities in the network, then analyze the structure that arises from this. Compare it with the attributes of gender and office (maybe graphically is a good approach).

To work: 
Google Collab (make sure it’s in R) , each pair should have their own collab. 
Use github to upload each time. 
