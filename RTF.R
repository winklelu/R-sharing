library(gt)
library(dplyr)
library(glue)

# Define the start and end dates for the data range
start_date <- "2010-06-07"
end_date <- "2010-06-14"

# Create a gt table based on preprocessed `sp500` table data
gt_table <- sp500 |>
  filter(date >= start_date & date <= end_date) |>
  select(-adj_close) |>
  gt() |>
  tab_header(
    title = "S&P 500",
    subtitle = glue("{start_date} to {end_date}")
  ) |>
  fmt_currency() |>
  fmt_date(columns = date, date_style = "wd_m_day_year") |>
  fmt_number(columns = volume, suffixing = TRUE)


# Define the output path
output_path <- "D:/05_R/Practice/sp500_table.rtf"

# Save the gt table as an RTF file
gtsave(data = gt_table, filename = output_path)









