## Code Book

* Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
* The data set is in UCI HAR Dataset directory.
* The R script for data analysis is run_analysis.R
* Execution of file run_analysis.R will result a tidy.txt

## Tidy Data

A tidy is a data table with following columns. 

Tidy Column  |	Original Column
------------ | -----------------
"Activity"                                         	 |"Activity"                            
 "Subject"                                           	 |"Subject"
 "TimeBodyAccelerometerMean()-X"                     	 |"tBodyAcc-mean()-X"                   
 "TimeBodyAccelerometerMean()-Y"                    	 |"tBodyAcc-mean()-Y"                    
 "TimeBodyAccelerometerMean()-Z"                     	 |"tBodyAcc-mean()-Z"                   
 "TimeBodyAccelerometerSTD()-X"                     	 |"tBodyAcc-std()-X"                     
 "TimeBodyAccelerometerSTD()-Y"                      	 |"tBodyAcc-std()-Y"                     
 "TimeBodyAccelerometerSTD()-Z"                     	 |"tBodyAcc-std()-Z"                    
 "TimeGravityAccelerometerMean()-X"                  	 |"tGravityAcc-mean()-X"                 
 "TimeGravityAccelerometerMean()-Y"                 	 |"tGravityAcc-mean()-Y"                 
 "TimeGravityAccelerometerMean()-Z"                  	 |"tGravityAcc-mean()-Z"                
 "TimeGravityAccelerometerSTD()-X"                  	 |"tGravityAcc-std()-X"                 
 "TimeGravityAccelerometerSTD()-Y"                   	 |"tGravityAcc-std()-Y"                
 "TimeGravityAccelerometerSTD()-Z"                  	 |"tGravityAcc-std()-Z"                 
 "TimeBodyAccelerometerJerkMean()-X"                 	 |"tBodyAccJerk-mean()-X"                
 "TimeBodyAccelerometerJerkMean()-Y"                	 |"tBodyAccJerk-mean()-Y"               
 "TimeBodyAccelerometerJerkMean()-Z"                 	 |"tBodyAccJerk-mean()-Z"               
 "TimeBodyAccelerometerJerkSTD()-X"                 	 |"tBodyAccJerk-std()-X"                
 "TimeBodyAccelerometerJerkSTD()-Y"                  	 |"tBodyAccJerk-std()-Y"                 
 "TimeBodyAccelerometerJerkSTD()-Z"                 	 |"tBodyAccJerk-std()-Z"                
 "TimeBodyGyroscopeMean()-X"                         	 |"tBodyGyro-mean()-X"                   
 "TimeBodyGyroscopeMean()-Y"                        	 |"tBodyGyro-mean()-Y"                   
 "TimeBodyGyroscopeMean()-Z"                         	 |"tBodyGyro-mean()-Z"                  
 "TimeBodyGyroscopeSTD()-X"                         	 |"tBodyGyro-std()-X"                   
 "TimeBodyGyroscopeSTD()-Y"                          	 |"tBodyGyro-std()-Y"                   
 "TimeBodyGyroscopeSTD()-Z"                         	 |"tBodyGyro-std()-Z"                   
 "TimeBodyGyroscopeJerkMean()-X"                     	 |"tBodyGyroJerk-mean()-X"              
 "TimeBodyGyroscopeJerkMean()-Y"                    	 |"tBodyGyroJerk-mean()-Y"               
 "TimeBodyGyroscopeJerkMean()-Z"                     	 |"tBodyGyroJerk-mean()-Z"              
 "TimeBodyGyroscopeJerkSTD()-X"                     	 |"tBodyGyroJerk-std()-X"                
 "TimeBodyGyroscopeJerkSTD()-Y"                      	 |"tBodyGyroJerk-std()-Y"                
 "TimeBodyGyroscopeJerkSTD()-Z"                     	 |"tBodyGyroJerk-std()-Z"               
 "TimeBodyAccelerometerMagnitudeMean()"              	 |"tBodyAccMag-mean()"                   
 "TimeBodyAccelerometerMagnitudeSTD()"              	 |"tBodyAccMag-std()"                   
 "TimeGravityAccelerometerMagnitudeMean()"           	 |"tGravityAccMag-mean()"               
 "TimeGravityAccelerometerMagnitudeSTD()"           	 |"tGravityAccMag-std()"                 
 "TimeBodyAccelerometerJerkMagnitudeMean()"          	 |"tBodyAccJerkMag-mean()"               
 "TimeBodyAccelerometerJerkMagnitudeSTD()"          	 |"tBodyAccJerkMag-std()"               
 "TimeBodyGyroscopeMagnitudeMean()"                  	 |"tBodyGyroMag-mean()"                 
 "TimeBodyGyroscopeMagnitudeSTD()"                  	 |"tBodyGyroMag-std()"                   
 "TimeBodyGyroscopeJerkMagnitudeMean()"              	 |"tBodyGyroJerkMag-mean()"             
 "TimeBodyGyroscopeJerkMagnitudeSTD()"              	 |"tBodyGyroJerkMag-std()"              
 "FrequencyBodyAccelerometerMean()-X"                	 |"fBodyAcc-mean()-X"                    
 "FrequencyBodyAccelerometerMean()-Y"               	 |"fBodyAcc-mean()-Y"                   
 "FrequencyBodyAccelerometerMean()-Z"                	 |"fBodyAcc-mean()-Z"                    
 "FrequencyBodyAccelerometerSTD()-X"                	 |"fBodyAcc-std()-X"                     
 "FrequencyBodyAccelerometerSTD()-Y"                 	 |"fBodyAcc-std()-Y"                    
 "FrequencyBodyAccelerometerSTD()-Z"                	 |"fBodyAcc-std()-Z"                     
 "FrequencyBodyAccelerometerMeanFreq()-X"            	 |"fBodyAcc-meanFreq()-X"                
 "FrequencyBodyAccelerometerMeanFreq()-Y"           	 |"fBodyAcc-meanFreq()-Y"               
 "FrequencyBodyAccelerometerMeanFreq()-Z"            	 |"fBodyAcc-meanFreq()-Z"                
 "FrequencyBodyAccelerometerJerkMean()-X"           	 |"fBodyAccJerk-mean()-X"               
 "FrequencyBodyAccelerometerJerkMean()-Y"            	 |"fBodyAccJerk-mean()-Y"               
 "FrequencyBodyAccelerometerJerkMean()-Z"           	 |"fBodyAccJerk-mean()-Z"               
 "FrequencyBodyAccelerometerJerkSTD()-X"             	 |"fBodyAccJerk-std()-X"                 
 "FrequencyBodyAccelerometerJerkSTD()-Y"            	 |"fBodyAccJerk-std()-Y"                
 "FrequencyBodyAccelerometerJerkSTD()-Z"             	 |"fBodyAccJerk-std()-Z"                 
 "FrequencyBodyAccelerometerJerkMeanFreq()-X"       	 |"fBodyAccJerk-meanFreq()-X"            
 "FrequencyBodyAccelerometerJerkMeanFreq()-Y"        	 |"fBodyAccJerk-meanFreq()-Y"           
 "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       	 |"fBodyAccJerk-meanFreq()-Z"            
 "FrequencyBodyGyroscopeMean()-X"                    	 |"fBodyGyro-mean()-X"                   
 "FrequencyBodyGyroscopeMean()-Y"                   	 |"fBodyGyro-mean()-Y"                  
 "FrequencyBodyGyroscopeMean()-Z"                    	 |"fBodyGyro-mean()-Z"                  
 "FrequencyBodyGyroscopeSTD()-X"                    	 |"fBodyGyro-std()-X"                    
 "FrequencyBodyGyroscopeSTD()-Y"                     	 |"fBodyGyro-std()-Y"                   
 "FrequencyBodyGyroscopeSTD()-Z"                    	 |"fBodyGyro-std()-Z"                    
 "FrequencyBodyGyroscopeMeanFreq()-X"                	 |"fBodyGyro-meanFreq()-X"              
 "FrequencyBodyGyroscopeMeanFreq()-Y"               	 |"fBodyGyro-meanFreq()-Y"              
 "FrequencyBodyGyroscopeMeanFreq()-Z"                	 |"fBodyGyro-meanFreq()-Z"              
 "FrequencyBodyAccelerometerMagnitudeMean()"        	 |"fBodyAccMag-mean()"                   
 "FrequencyBodyAccelerometerMagnitudeSTD()"          	 |"fBodyAccMag-std()"                   
 "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    	 |"fBodyAccMag-meanFreq()"               
 "FrequencyBodyAccelerometerJerkMagnitudeMean()"     	 |"fBodyBodyAccJerkMag-mean()"           
 "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     	 |"fBodyBodyAccJerkMag-std()"           
 "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()" 	 |"fBodyBodyAccJerkMag-meanFreq()"      
 "FrequencyBodyGyroscopeMagnitudeMean()"            	 |"fBodyBodyGyroMag-mean()"              
 "FrequencyBodyGyroscopeMagnitudeSTD()"              	 |"fBodyBodyGyroMag-std()"              
 "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        	 |"fBodyBodyGyroMag-meanFreq()"          
 "FrequencyBodyGyroscopeJerkMagnitudeMean()"         	 |"fBodyBodyGyroJerkMag-mean()"          
 "FrequencyBodyGyroscopeJerkMagnitudeSTD()"         	 |"fBodyBodyGyroJerkMag-std()"          
 "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"     	 |"fBodyBodyGyroJerkMag-meanFreq()"      
 "Angle(TimeBodyAccelerometerMean,Gravity)"         	 |"angle(tBodyAccMean,gravity)"          
 "Angle(TimeBodyAccelerometerJerkMean),GravityMean)" 	 |"angle(tBodyAccJerkMean),gravityMean)"
 "Angle(TimeBodyGyroscopeMean,GravityMean)"         	 |"angle(tBodyGyroMean,gravityMean)"    
 "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"      	 |"angle(tBodyGyroJerkMean,gravityMean)" 
 "Angle(X,GravityMean)"                             	 |"angle(X,gravityMean)"                
 "Angle(Y,GravityMean)"                              	 |"angle(Y,gravityMean)"                 
 "Angle(Z,GravityMean)" 	 							 |"angle(Z,gravityMean)"      
 
 
## Activities
 
Labels |
-------|---- 
WALKING | 
WALKING_UPSTAIRS | 
WALKING_DOWNSTAIRS | 
SITTING | 
STANDING | 
LAYING | 
 