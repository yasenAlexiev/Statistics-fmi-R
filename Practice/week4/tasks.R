

birthdays = function(p)
{
  prob = 1;
  
  for(i in 1:365)
  {
    prob = prob * (366-i)/365;
    if(prob < 1-p)
    {
      break;
    }
  }
  return(i);
}

dice = function(N = 100)
{
  x = sample(1:6, N, replace = T)
  out = sum(x == 6)
  return(out);
}

rep.dace = function(n)
{
  c = 0;
  for(i in 1:n)
  {
    c = c + dice();
  }
  return(c);
}

prob.dace = function(n)
{
  x = rep.int(0, n);
  c = 0;
  for(i in 1:n)
  {
    c = c + dice();
    x[i] = c /(100*i);
  }
  return (x);
}

gameWithDad = function(p = 0.3)
{
  return( sample(c(0,1), 1, prob = c(1-p, p)))
}


gameWithMom = function(p = 0.4)
{
  return( sample(c(0,1), 1, prob = c(1-p, p)))
}

GameMDM = function(n = 3)
{
  firstGameRes = gameWithMom();
  secondGameRes = gameWithDad();
  thirdGameRes = gameWithMom();
  
  res = firstGameRes + secondGameRes + thirdGameRes;
  
  if ( res >= 2 & secondGameRes == 1)
  {
    return(1);
  }
  return(0);
}

rep.GameMDM = function(n)
{
  numberOfwins = 0;
  for( i in 1:n )
  {
    numberOfwins = numberOfwins + GameMDM();
  }
  return(numberOfwins);
}

prob.GameMDM = function(n)
{
  x = rep.int(0,n);
  allWins = 0;
  
  for(i in 1:n)
  {
    allWins = allWins + rep.GameMDM(100);
    x[i] = allWins / (100*i);
  }
  return(x);
}

gifts = function(n = 20)
{
  x = sample(1:n, 20);
  numberOfDiff = sum(x != c(1,20));
  
  if( numberOfDiff == 20 )
  {
    return(1);
  }
  return(0);
}

rep.gifts = function(n)
{
  sum = 0;
  for( i in 1:n )
  {
    sum = sum + gifts()
  }
  return(sum);
  
}

giftsNumberSelf = function(n = 20)
{
  x = sample(1:n);
  return (sum(x == c(1:n)));
}

rep.giftsNumberSelf = function(n)
{
  sum = 0;
  for( i in 1:n )
  {
    sum = sum + giftsNumberSelf()
  }
  return(sum/n);
}
