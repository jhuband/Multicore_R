numDarts <- 5000000
circleHits <- 0

for (n in 1:numDarts){
   x <- runif(1);  y <- runif(1)
   d <- sqrt(x*x + y*y)
   if (d <= 1.0){
      circleHits <- circleHits + 1
   }
}
#  Use formula to estimate pi
pi = 4.0 * circleHits/numDarts
cat("\nThe estimate for pi is",pi,".\n")

