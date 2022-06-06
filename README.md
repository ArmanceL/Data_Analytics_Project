
"Banding problem in printing process" project for the "Data Analytics for Decision Making" course given by Prof. J. Zuber during the Spring Semester 2022.

## Group members 
* Armance Larfeuille 
* Nina Bidet

Project’s title : 
# Soil analysis on 3 different mountain ranges

Our goal is to answer our customer's questions about the presence of grooves in the cylinder at some point during the printing process that ruining his products. 

- Explanation of the printing process : First, an engraved copper cylinder is rotated in a bath of ink. The excess ink is removed and the paper is pressed against the inked image. Then, the engraved image is removed from the cylinder once the job is complete. Finally, the cylinder in re-used.

- Problematic : Presence of grooves in the cylinders that prevent the printing process from working properly. 

- Our goal : Identify anomalies during the printing process in order to reduce or eliminate these banding defects. 

# Project structure 
It is divided in 6 files:
- 'Intro.Rmd' contains the introduction of our project 
- 'data.Rmd' contains a first overview of the data and the data cleaning 
- 'EDA.Rmd' contains the exploratory data analysis of the cleaned dataset
- 'Analysis.Rmd' contains the analysis of our project. 
  We proceeded to the splitting of the dataset into training and test sets.
  The models used are : Neural Network, K-Nearest Neighbour, Naïve Bayes, Random Forest, SVM, Logistic Regression. 
  Finally we analysed the scores on each models to determine the best one. 
- 'concl.Rmd' contains the conclusion, the limitations and the futur work of our project 
- 'report.Rmd' is used to put our different parts of the project together. 

# Use our code 
In order to run the whole report, one has to knit the file named 'Report.Rmd'. It can be knitted into html without any problem. 
 
The file 'setup.R' contains all the packages and libraries used during the project. 

1) Clone the project 
```
git clone https://github.com/ArmanceL/Data_Analytics_Project
```

2) Open the project (on R or R studio)
* Click on 'DA_Project_AL_NB.Rproj' 

5) Render the report as html
Open the "Report.Rmd" and click on "knit as html".
