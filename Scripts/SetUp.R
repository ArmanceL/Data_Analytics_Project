#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
  "tidyverse","tidyquant", "readxl", #for wrangling
  "dplyr",  "lubridate","DataExplorer","summarytools","Hmisc","DT","psych",
  "ggplot2", "ggthemes", "naniar", "patchwork", "FactoMineR","RColorBrewer",
  "factoextra", "corrplot", "GGally", "corrr", "ggcorrplot", #for plotting
  "nnet", "caret", "neuralnet", # for Neural Network 
  "randomForest","naivebayes",
  "DT","tidyquant","ggthemes","RColorBrewer","corrr","ggcorrplot",
  "kableExtra","DataExplorer","inspectdf")

purrr::walk(packages, library, character.only = TRUE)
