# 計算每個向量的平均值
numbers_list <- list(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9))
numbers_list 

lapply(numbers_list, mean)


# 對數據框的每一列計算平均值
df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
lapply(df, mean)


# 讀取多個 CSV 文件並計算每個文件的行數
file_paths <- list.files(pattern = "\\.csv$")
lapply(file_paths, function(x) {
  data <- read.csv(x)
  nrow(data)
})


# load all ,Rdata files
setwd('D:/05_R/00_R_Pharma_Using Shiny to Clearly Present Clinical Results with CDISC-Compliant Datase/Dataset/Oth1/Sample_R')
rdata_files <- list.files(pattern = "\\.RData$")
rdata_files


lapply(rdata_files, function(x) {
  load(x, envir = .GlobalEnv)
})



# 使用 parallel 包進行平行處理
library(parallel)
cl <- makeCluster(detectCores() - 1)
results <- parLapply(cl, 1:10, function(x) x^2)
stopCluster(cl)


# 將 lapply 結果轉換為矩陣
result_list <- lapply(1:3, function(x) x^2)
result_matrix <- simplify2array(result_list)


# 自定義函數來計算平方
square_function <- function(x) {
  return(x^2)
}
numbers <- list(1, 2, 3, 4, 5)
lapply(numbers, square_function)

# 自定義2
df <- data.frame(a = 1:5, b = 6:10, c = 11:15)
df
normalized_df <- lapply(df, function(x) {(x - min(x)) / (max(x) - min(x))})
normalized_df


# 自定義3
library(tidyverse)

winkle <- tibble(
  a = 1:5,
  b = c(2,3,4,5, 6)
)

winkle

winkle_data <- lapply(winkle, function(x)(x - min(x)))
winkle_data


# 自定義4
numbers <- list(1, 2, 3)
doubled_numbers <- lapply(numbers, function(x) x * 2)
print(doubled_numbers) 
