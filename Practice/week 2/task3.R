# Представете графично данните за тютюнопушенето при студентите.
# А също и тютюнопушенето в зависимост от пола

Smoke
table(Smoke)
pie(table(Smoke))
barplot(table(Smoke))
p = factor(Smoke, levels = levels(Smoke)[c(2, 4, 3, 1)])
table(p)
barplot(table(p))
barplot(table(Sex, p))
barplot(table(Sex, p), beside = TRUE, legend = TRUE)
barplot(prop.table(table(Sex, p)), beside = TRUE, legend = TRUE)
