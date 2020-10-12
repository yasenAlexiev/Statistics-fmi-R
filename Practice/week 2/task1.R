library (MASS)
attach(survey)
which(Smoke == "<NA>")
which(is.na(Smoke))
levels(Smoke) # това го приема като категории
x = c(1,2,5,4,3,2,2,3,2,1,5)
x # това е просто вектор
table(x) #ще категоризира x
y = factor(x) #това вече е категоризиран вектор
y

# task 1
# Намерете:
# а) броя на мъжете
z = Sex
table(z)
length(z)
# б) броя на мъжете пушачи
t1 = table(Sex, Smoke)
t1[1]
t1[1, ]
t1[2, ]
sum(t1[2, -2]) # решението!
# в) средната височина на мъжете
Height[Sex == "Male"]
mean(Height[Sex == "Male"], na.rm = T)
# г) височината и пола на 6те най-млади студента
p = order(Age)[1:6]
p
Height[p]
Sex[p]
