# Loop

# for loop
for (i in 1:10){
  results = 2 * i
  print(results)
}
class(results) 

# using purrr
library(purrr)
results <- map(1:10, ~ 2 * .x)
results

# while loop
i=1
while (i <= 10){
  results = 2 * i
  print(results)
  i <- i + 1
}


# break
for (i in 1:10) {
  if (i == 5) {
    break
  }
  results = 2 * i
  print(results)
}



# next
for (i in 1:10) {
  if (i == 5) {
    next
  }
  results = 2 * i
  print(results)
}


help(package = "purrr")
ls("package:purrr")
ls(getNamespace("purrr"))

