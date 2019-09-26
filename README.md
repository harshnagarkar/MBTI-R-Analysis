# MBTI-R-Analysis
R MBTI test analysis for my class

Data Analysis:-
1. What are the 3 file names with dirty data?
	After Data analysis on files inside MTBI_Personality_Tests folder:-
File submission done by Subedi,Npkarno and Rsaysbury have the dirty Data  

2. You will need to clean these. Specifically, what did you do to clean the data in each file?
In Order to clean these Files
Subedi’s File:- He had one blank space so Shift all the data left by 1 one cell where there was gap
Npkarno’s File:- He had all his data in one column so transpose to horizontal was needed
Rasybury:- he had 2 answers missing in his questi*ons, but sill was occupying 73 columns so I had the last 2 cells before the personality type to be blank and shift the conclusion types to right by 2 cells. 

3. What does R think column 73’s data type is? Why do you think this is the case?
R Thinks that column 73 is TRUE or FALSE a boolean value. This is the case because the column haf characters ‘T’ and ‘F’ only.

![Personality graph](imgs/screenshot (6).png)

Personality Analysis:-

4. What personality type is the most common in the class?						ISTJ is most common followed by EST based upon number of people in graph.
  
5. What are the traits of this personality type (include the reference to the website you used to answer this question) 
Based upon article on “http://www.humanmetrics.com/personality/istj” ISTJ type people are often called inspectors. They are punctual, self righteous and Fact oriented people. Although they can look cold from outside once you know them, they are warm. Also they keep emotions and feelings to themselves and actively participate in traditions like going to church,etc making then a little less open to change.

6. Is this your personality type? If not, what is yours and what are the traits?
My personality type is ESTJ. According to the article on http://www.humanmetrics.com/personality/estj” ESTJ thrive on order and continuity. They are well centralized in family and traditions and have a little sense of orthodoxy. They are leaders, good communicators and often are not afraid to stand for what they think of. Laziness is not seen with ambivalence with this type. Jobs in management politics,etc

7. Referring to Hadley Wickham’s comments about what makes data messy, what is the current issue with our data that makes it messy? 
The reason why our data is still messy is because 2 questions were not answers by Rsaysbury so they hold hold NA values. We need to remove those NA’s inorder to clean the data or add random values from set(A,B)

8. For geom_bar, what is the default for the stat argument?
The default value of stat in geom_bar is ‘bin’.

9. What should stat be if you want the heights of the bars to represent values in the data?
Stat Should be equal to ‘identity’ inorder to view the heights of bars in data.

10. Include the plot in your write-up and answer questions about the results  Which answer, A or B, seems to be the more popular answer among the 70 questions? 
	Answer ‘A’ seems more popular than ‘B’

![A,B bar plot](imgs/screenshot (5).png)

11. Which two questions were answered the same by almost the entire class (all but 2 people)?  
	Question number 14 and 20.

![Bar plot for all question](imgs/screenshot (4).png)
12. What are the two questions from the Myers Briggs test (give the question text)?  Did you answer these two questions with the majority or the minority of the class?
I questions are 14 and 20 then I answered them with majority.
	
13. Are there any questions that have more than two answers? If so, what was the issue for having a third answer (see the legend in my sample output)? How can it be cleaned?
Yes there are some questions 69,70  who have answer as NA . The issue of having third answer is because they were not answered hence default is NA. There are two ways to clean it. First is what I did I added two random values for missing fields. Or you can be cleaned at responses calculation where we can na.omit() after the gather(question,answer,Q1;Q70).
