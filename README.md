PROCEDURE TO GET THE CLEANED DATA
=================================

Note: The command examples are for a linux system.

1. Create a working directory
  mkdir wd

2. Move into it and unzip the source zip file there
  cd wd
  unzip "UCI HAR Dataset.zip"

3. Put the script run_analysis.R to this directory
  cp -a <path where the program was downloaded>/run_analysis.R .

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

Means and standard deviations of values from the accelerometer,
after some signal filtering and gravity removed, along x, y or z.

tbodyaccmeanx
tbodyaccmeany
tbodyaccmeanz

tbodyaccstdx
tbodyaccstdy
tbodyaccstdz


Means and standard deviations of values from the accelerometer,
after some signal filtering, of gravity along x, y or z.

tgravityaccmeanx
tgravityaccmeany
tgravityaccmeanz

tgravityaccstdx
tgravityaccstdy
tgravityaccstdz


Means and standard deviations of values from the accelerometer,
after some signal filtering, of Jerk signals along x, y or z.

tbodyaccjerkmeanx
tbodyaccjerkmeany
tbodyaccjerkmeanz

tbodyaccjerkstdx
tbodyaccjerkstdy
tbodyaccjerkstdz


Means and standard deviations of values from the gyroscope,
after some signal filtering, along x, y or z.

tbodygyromeanx
tbodygyromeany
tbodygyromeanz

tbodygyrostdx
tbodygyrostdy
tbodygyrostdz


Means and standard deviations of values from the gyroscope,
after some signal filtering, of Jerk signals along x, y or z.

tbodygyrojerkmeanx
tbodygyrojerkmeany
tbodygyrojerkmeanz

tbodygyrojerkstdx
tbodygyrojerkstdy
tbodygyrojerkstdz


Means and standard deviations of the magnitude (norm)
of the values from the accelerometer, after some signal filtering
and gravity removed.

tbodyaccmagmean
tbodyaccmagstd


Means and standard deviations of values from the accelerometer,
after some signal filtering, of the magnitude (norm) of the gravity.

tgravityaccmagmean
tgravityaccmagstd

Means and standard deviations of values from the accelerometer,
after some signal filtering, of the magnitude (norm) of the
Jerk signals.

tbodyaccjerkmagmean
tbodyaccjerkmagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope, after some signal filtering.

tbodygyromagmean
tbodygyromagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope, after some signal filtering,
of Jerk signals.

tbodygyrojerkmagmean
tbodygyrojerkmagstd



2. Data after Fast Fourier Transform applied.

Means and standard deviations of values from the accelerometer,
after some signal filtering and gravity removed, along x, y or z.

fbodyaccmeanx
fbodyaccmeany
fbodyaccmeanz

fbodyaccstdx
fbodyaccstdy
fbodyaccstdz


Means and standard deviations of values from the accelerometer,
after some signal filtering, of Jerk signals along x, y or z.

fbodyaccjerkmeanx
fbodyaccjerkmeany
fbodyaccjerkmeanz

fbodyaccjerkstdx
fbodyaccjerkstdy
fbodyaccjerkstdz


Means and standard deviations of values from the gyroscope,
after some signal filtering, along x, y or z.

fbodygyromeanx
fbodygyromeany
fbodygyromeanz

fbodygyrostdx
fbodygyrostdy
fbodygyrostdz

Means and standard deviations of the magnitude (norm)
of the values from the accelerometer, after some signal filtering
and gravity removed.

fbodyaccmagmean
fbodyaccmagstd


Means and standard deviations of values from the accelerometer,
after some signal filtering, of the magnitude (norm) of the
Jerk signals.

fbodybodyaccjerkmagmean
fbodybodyaccjerkmagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope, after some signal filtering.

fbodybodygyromagmean
fbodybodygyromagstd


Means and standard deviations of the magnitude (norm)
of the values from the gyroscope, after some signal filtering,
of Jerk signals.

fbodybodygyrojerkmagmean
fbodybodygyrojerkmagstd


For further details pls. see the original (source) documentation.
