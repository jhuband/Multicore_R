library(future); library(furrr)
library(tictoc)

#Define the function to be passed to the cores
myFunc <- function(value){
   Sys.sleep(1)
   paste0("I received ", value, ". Hello from ", Sys.getpid())
}

#Define the type of parallelization
plan("multisession", workers=3)

#  Launch the jobs and collect the results
tic()
results <- future_map(1:10, myFunc)
toc()

print(unlist(results))

