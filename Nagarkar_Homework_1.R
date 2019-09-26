# Harsh Nagarkar
# Fall 2019 CSCI 390
# Homework 1
# Myers-Briggs Personality Test
# All question are answered on attached Document File.

library(tidyverse)
library(readr)

mbti <- dir(path="data/MTBI_Personality_Tests",pattern="*.csv$|*xlsx$")  %>% 
  map_dfr(function(x)  read_csv(file.path("data/MTBI_Personality_Tests", x),col_names = FALSE))

names <- c("Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8", "Q9", "Q10", "Q11", "Q12", "Q13", "Q14", "Q15", "Q16", "Q17", "Q18", "Q19", "Q20", "Q21", "Q22", "Q23", "Q24", "Q25", "Q26", "Q27", "Q28", "Q29", "Q30", "Q31", "Q32", "Q33", "Q34", "Q35", "Q36", "Q37", "Q38", "Q39", "Q40", "Q41", "Q42", "Q43", "Q44", "Q45", "Q46", "Q47", "Q48", "Q49", "Q50", "Q51", "Q52", "Q53", "Q54", "Q55", "Q56", "Q57", "Q58", "Q59", "Q60", "Q61", "Q62", "Q63", "Q64", "Q65", "Q66", "Q67", "Q68", "Q69", "Q70", "EI", "SN", "TF", "JP", "Personality_Type" )


colnames(mbti) <- names


mbti <- mbti %>% 
  mutate(TF=case_when(TF ~'T',TRUE~'F'))

mbti %>%
  ggplot(mapping=aes(x=Personality_Type,fill=Personality_Type))+
  geom_bar()

responses <- mbti %>%
  gather(question, answer, Q1:Q70)
#  na.omit()

number<-responses %>% 
  group_by(question,answer) %>% summarise(number = n())

number%>% ggplot(mapping = aes(x=answer,y=number,fill=answer)) +
  geom_bar(stat="identity")

number%>% ggplot(mapping = aes(x=answer,y=number,fill=answer)) +
  geom_bar(stat="identity") +
  facet_wrap(~question,nrow = 7)

data<-mbti %>% 
  gather(question,answer,Q1:Q70) %>% 
  group_by(question,answer) %>% summarise(number = n())

data %>% 
  filter(number==min(.$number))

  
  
data %>% 
  filter(number==max(.$number))
  
