PROCEDURE TO GET THE CLEANED DATA
=================================

Note: The command examples are for a linux system.

1. Create a working directory
  mkdir wd

2. Move into it and unzip the zip file there
  cd wd
  unzip "UCI HAR Dataset.zip"

3. Put the script run_analysis.R to this directory
  cp -a <path where the program was downloaded from>/run_analysis.R .

4. Run the script
  Rscript run_analysis.R
or
Call R and source the script
  R
  source("run_analysis.R")

Two files will be created:
dataset4.txt        The dataset from the step 4.
dataset5.txt        The dataset from the step 5 and the pretended result.



VARIABLES
=========


All variables are the means of original variables
grouped and summarized by "activity" and "subject".

All accelerations are expressed in 'g's and angular
velocities in radians/second.


1. Data captured at a 50Hz rate.

Means and standard deviations of values from the accelerometer
after some signal filtering and gravity removed along x, y or z.

meantbodyaccmeanx
meantbodyaccmeany
meantbodyaccmeanz

meantbodyaccstdx
meantbodyaccstdy
meantbodyaccstdz


Means and standard deviations of values from the accelerometer
after some signal filtering, of gravity along x, y or z.

meantgravityaccmeanx
meantgravityaccmeany
meantgravityaccmeanz

meantgravityaccstdx
meantgravityaccstdy
meantgravityaccstdz


Means and standard deviations of values from the accelerometer
after some signal filtering of Jerk signals along x, y or z.

meantbodyaccjerkmeanx
meantbodyaccjerkmeany
meantbodyaccjerkmeanz

meantbodyaccjerkstdx
meantbodyaccjerkstdy
meantbodyaccjerkstdz


Means and standard deviations of values from the gyroscope
after some signal filtering along x, y or z.

meantbodygyromeanx
meantbodygyromeany
meantbodygyromeanz

meantbodygyrostdx
meantbodygyrostdy
meantbodygyrostdz


Means and standard deviations of values from the gyroscope
after some signal filtering of Jerk signals along x, y or z.

meantbodygyrojerkmeanx
meantbodygyrojerkmeany
meantbodygyrojerkmeanz

meantbodygyrojerkstdx
meantbodygyrojerkstdy
meantbodygyrojerkstdz


Means and standard deviations of the magnitude (norm)
of the values from the accelerometer after some signal filtering
and gravity removed.

meantbodyaccmagmean
meantbodyaccmagstd


Means and standard deviations of values from the accelerometer
after some signal filtering, of the magnitude (norm) of the gravity.

meantgravityaccmagmean
meantgravityaccmagstd

Means and standard deviations of values from the accelerometer
after some signal filtering, of the magnitude (norm) of the
Jerk signals.

meantbodyaccjerkmagmean
meantbodyaccjerkmagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope after some signal filtering.

meantbodygyromagmean
meantbodygyromagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope after some signal filtering
of Jerk signals.

meantbodygyrojerkmagmean
meantbodygyrojerkmagstd



2. Data after Fast Fourier Transform applied.

Means and standard deviations of values from the accelerometer
after some signal filtering and gravity removed along x, y or z.

meanfbodyaccmeanx
meanfbodyaccmeany
meanfbodyaccmeanz

meanfbodyaccstdx
meanfbodyaccstdy
meanfbodyaccstdz


Means and standard deviations of values from the accelerometer
after some signal filtering of Jerk signals along x, y or z.

meanfbodyaccjerkmeanx
meanfbodyaccjerkmeany
meanfbodyaccjerkmeanz

meanfbodyaccjerkstdx
meanfbodyaccjerkstdy
meanfbodyaccjerkstdz


Means and standard deviations of values from the gyroscope
after some signal filtering along x, y or z.

meanfbodygyromeanx
meanfbodygyromeany
meanfbodygyromeanz

meanfbodygyrostdx
meanfbodygyrostdy
meanfbodygyrostdz

Means and standard deviations of the magnitude (norm)
of the values from the accelerometer after some signal filtering
and gravity removed.

meanfbodyaccmagmean
meanfbodyaccmagstd


Means and standard deviations of values from the accelerometer
after some signal filtering, of the magnitude (norm) of the
Jerk signals.

meanfbodybodyaccjerkmagmean
meanfbodybodyaccjerkmagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope after some signal filtering.

meanfbodybodygyromagmean
meanfbodybodygyromagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope after some signal filtering
of Jerk signals.

meanfbodybodygyrojerkmagmean
meanfbodybodygyrojerkmagstd


For further details pls. see the original (source) documentation.
