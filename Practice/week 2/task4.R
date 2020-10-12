

which(Age < 20)
s1 = which(Age <= 20)
s2 = which(20 < Age & Age <= 25)
s3 = which(25 < Age)
x = Age
x[s1] = "A"
x[s2] = "B"
x[s3] = "C"
x
y = factor(x)
t1 = table(y)
pie(t1)
