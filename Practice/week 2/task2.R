t = table(Smoke)
t
length(is.na(Smoke))
which(is.na(Smoke))
17/length(is.na(Smoke))
prop.table(t)

# Възоснова на данните пресметнете вероятностите
# а) Случайно избран човек да се окаже редовен пушач
# б) Случайно избран човек да се окаже редовно пушещ мъж
# в) Случайно избран мъж да се окаже редовен пушач
# г) Случайно избран редовен пушач да се окаже мъж

t2 = table(Sex, Smoke)
t2
prop.table(t2)
t3 = prop.table(t2)
sum(t3)

