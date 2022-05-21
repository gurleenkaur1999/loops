#printing names in dataset
for(i in 1:nrow(titanic_train)){
  print(titanic_train[i, "Name"])
}

#passengers who survived and their name starts with A or B and age is greater than 50.
for(i in 1:nrow(titanic_train)){
  survived = titanic_train[i, "Survived"]
  name = titanic_train[i, "Name"]
  age = titanic_train[i, "Age"]
  first_letter_name = substr(name,1,1)
  
  if(survived==1 & (first_letter_name == 'A' | first_letter_name == 'B') &
     age>50){
    print(titanic_train[i,])
  }
}

# for printing the rows 1 to 10
for(i in 1:10){
  print(titanic_train[i,])
}


#printing the table of 2
for(i in 1:10){
  print(2*i)
}

#printing table of 2 horizontally
d <- 0
for(i in 1:10){
  co <- 2*i
  d <- append(d,co)
}
d

#sum of a column
sum <- 0
for(i in 1:891){
  fare <- titanic_train[i,"Fare"]
  sum <- sum + fare
}



#Average of a column
sum1<- 0

for(i in 1:891){
  fare <- titanic_train[i,"Fare"]
  sum1 = sum1+fare
}
avg <- sum1/nrow(titanic_train)

#calculating max value
maximum <- 7.25
for(i in 2:891){
  price <- titanic_train[i,"Fare"]
  
  if(price>maximum){
    maximum <- price
  }
  
}

maximum


#calculating median
titanic_train$Fare<- sort(titanic_train$Fare)

if(nrow(titanic_train)/2==0){#even numbers
  value_1 <- nrow(titanic_train)/2
  middle_value_1 <- titanic_train[value_1,"Fare"]
  value_2<- (nrow(titanic_train)/2)+1
  middle_value_2 <- titanic_train[value_2,"Fare"]
  Median <- (middle_value_1+middle_value_2)/2
}else{
  #odd numbers
  a<- (nrow(titanic_train)+1)/2
  Median <- titanic_train[a,"Fare"]
}
Median
