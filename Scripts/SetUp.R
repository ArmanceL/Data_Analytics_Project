#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
  "tidyverse", "readxl", #for wrangling
  "dplyr",  "lubridate","DataExplorer","summarytools","Hmisc","psych",
  "ggplot2", "naniar", "patchwork", "FactoMineR",
  "factoextra", "corrplot", "GGally", #for plotting
  "nnet", "caret", "neuralnet", # for Neural Network 
  "randomForest","naivebayes",
  "DT","tidyquant","ggthemes","RColorBrewer","corrr","ggcorrplot",
  "kableExtra","DataExplorer","inspectdf")

purrr::walk(packages, library, character.only = TRUE)
