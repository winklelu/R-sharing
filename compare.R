library(tidyverse)

 
df1 <- tibble(
  id = 1:4,
  value = c(10, 20, 30,40)
)

df2 <- tibble(
  id = 1:3,
  value = c(10, 25, 30)
)

# 使用 all.equal 比較
all.equal(df1, df2)

# 使用 setdiff 比較
setdiff(df1, df2)

# 使用 anti_join 比較
anti_join(df1, df2, by = "id")

# install.packages('diffdf')
library(diffdf)
diffdf(df1, df2)