library(foreach); library(future); library(doFuture)
library(tictoc)

#Define the function to be passed to the cores
myFunc <- function(value){
   Sys.sleep(1)
   paste0("I received ", value, ". Hello from ", Sys.getpid())
}

#Define the type of parallelization
registerDoFuture()
plan("multisession", workers=3)

#  Launch the jobs and collect the results
tic()
results <- foreach(x = 1:10, .combine=c) %dopar% {
   myFunc(x)
}
toc()

print(unlist(results))


