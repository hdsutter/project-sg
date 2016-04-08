# Overa geldt: 1 = munt, 2 is kop

# Oef 1 (b)

wins1 = 0 
results = 0
for(i in 1:1000){
  t=TRUE;
  while(isTRUE(t)){
    result <- sample(1:2, replace = TRUE, size = 2)
    if(isTRUE(result[1] == 1 & result[2] == 1)){
      t=FALSE;
      wins1[i]=1
    } else if(isTRUE(result[1] == 1 & result[2] == 2)){
      t=FALSE;
      wins1[i]=2
    } 
  }
}

aisha = 0;
yves = 0;
nobody = 0;
for(i in 1:1000){
  if(wins1[i]==1){
    aisha = aisha + 1
  } else {
    yves = yves + 1
  }
}

print('   oef 1 b    ')
print('--------------')
print('wins aisha')
print(aisha)
print("wins yves")
print(yves)
print(nobody)




# Oef 1 (c)
wins2 = 0 
for(i in 1:1000){
  t=TRUE;
  while(isTRUE(t)){
    result <- sample(1:2, replace = TRUE, size =2)
    if(result[1] == 1 & result[2] == 1){
      t=FALSE
      wins2[i]=1
    } else if(result[1] == 2 & result[2] == 1){
      t=FALSE
      wins2[i]=2
    } 
  }
}

aisha = 0;
yves = 0;
nobody = 0;
for(i in 1:1000){
  if(wins2[i]==1){
    aisha = aisha + 1
  } else {
    yves = yves + 1
  }
}

print('   oef 1 c    ')
print('--------------')
print('wins aisha')
print(aisha)
print("wins yves")
print(yves)
print(nobody)



#oef 1 d
amount = 0;
for(i in 1:1000){
  t=TRUE;
  amount[i]=0;
  while(isTRUE(t)){
    result <- sample(1:2, replace = TRUE, size =2)
    amount[i] = amount[i] + 1
    if(result[1] == 1 & result[2] == 2){
      t=FALSE
    }
  }
}
print('   oef 1 d    ')
print('--------------')
print('gemiddelde tot kop, munt:')
print(mean(amount))
print('mediaan')
print(median(amount))

#oef 1 e
amount = 0;
for(i in 1:1000){
  t=TRUE;
  amount[i]=0;
  while(isTRUE(t)){
    result <- sample(1:2, replace = TRUE, size =2)
    amount[i] = amount[i] + 1
    if(result[1] == 1 & result[2] == 1){
      t=FALSE
    }
  }
}
print('   oef 1 e    ')
print('--------------')
print('gemiddelde tot kop, kop:')
print(mean(amount))
print('mediaan')
print(median(amount))
