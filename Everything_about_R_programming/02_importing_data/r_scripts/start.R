# 1. installing packages separately
install.packages("readxl")
install.packages("readr")
install.packages("dplyr")
install.packages("tidyr")

# 2. installing packages together
# Define a vector of package names
packages_to_install <- c("readxl", "jsonlite", "XML", "RSQLite", "rhdf5", "feather")

# Install the packages
install.packages(packages_to_install)

# load the installed packages
library(openxlsx)
library(tidyr) # data arrangement
library(dplyr) # data arrangement 
library(readr) # reading tab, comma and space separated tables into R
library(readxl) # reading excel into R 

getwd()

## Reading/Writing Data in R
## Excel
sc <- read_excel("02_importing_data/data/Scooby.xlsx")
head(sc)

# Writing/ saving the file as a new excel
excel_file_path = "02_importing_data/data/newfile.xlsx"
write.xlsx(sc, excel_file_path, sheetName = "Sheet1", rowNames = FALSE)

## Comma-separated values (CSV)
df1 <- read_csv("02_importing_data/data/children_per_woman_total_fertility.csv")
head(df1)

# Writing/ saving the file as a new csv
write.csv(sc, file = '02_importing_data/data/new_scooby_data1.csv')

## Loading txt file
df <- read.table("02_importing_data/data/SYBR_green.txt", header = TRUE)
head(df)

## some random updates