library(plyr)

# Check if in the correct dir
if (!file.exists("UCI HAR Dataset")) stop('You must be in a dir that contains "UCI HAR Dataset"')

# Read relevant data
df_al<-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
df_f<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
df_tes<-read.table("UCI HAR Dataset/test/subject_test.txt",stringsAsFactors=FALSE)
df_tey<-read.table("UCI HAR Dataset/test/y_test.txt",stringsAsFactors=FALSE)
df_trs<-read.table("UCI HAR Dataset/train/subject_train.txt",stringsAsFactors=FALSE)
df_try<-read.table("UCI HAR Dataset/train/y_train.txt",stringsAsFactors=FALSE)

# Handle train and test data frames function
process_ds<-function(df,factor,df_ty,df_ts) {
  varnames<-df_f[[2]]       # Names of the variables
  names(df)<-varnames       # Change names of the variables
  selids<-grep("(mean|std)\\(\\)",varnames)
  df<-df[selids]
  # Create a variable to distinguish data: train or test
  trainortest<-factor(c("train","test"))
  df$trainortest<-trainortest[factor]
  names(df_al)<-c("id","activity")
  names(df_ty)<-c("id")
  md<-merge(df_ty,df_al,by.x="id",by.y="id",all=TRUE,sort=FALSE)
  df$activity<-md$activity
  names(df_ts)<-c("subject")
  df$subject<-df_ts$subject
  df
}

# Build separate tables first
df_trx<-read.table("UCI HAR Dataset/train/X_train.txt",stringsAsFactors=FALSE)
df_trx<-process_ds(df_trx,1,df_try,df_trs)
df_tex<-read.table("UCI HAR Dataset/test/X_test.txt",stringsAsFactors=FALSE)
df_tex<-process_ds(df_tex,2,df_tey,df_tes)

# Build 1 table (train and test)
df<-rbind(df_trx,df_tex)

# Clean names
nms<-names(df)
nms<-tolower(nms)
nms<-gsub("[()_-]","",nms)
names(df)<-nms

## df contains the dataset as for the step 4

dft=ddply(df,c("activity","subject"),summarize,
  meanoftbodyaccmeanx=mean(tbodyaccmeanx),
  meanoftbodyaccmeany=mean(tbodyaccmeany),
  meanoftbodyaccmeanz=mean(tbodyaccmeanz),
  meanoftbodyaccstdx=mean(tbodyaccstdx),
  meanoftbodyaccstdy=mean(tbodyaccstdy),
  meanoftbodyaccstdz=mean(tbodyaccstdz),
  meanoftgravityaccmeanx=mean(tgravityaccmeanx),
  meanoftgravityaccmeany=mean(tgravityaccmeany),
  meanoftgravityaccmeanz=mean(tgravityaccmeanz),
  meanoftgravityaccstdx=mean(tgravityaccstdx),
  meanoftgravityaccstdy=mean(tgravityaccstdy),
  meanoftgravityaccstdz=mean(tgravityaccstdz),
  meanoftbodyaccjerkmeanx=mean(tbodyaccjerkmeanx),
  meanoftbodyaccjerkmeany=mean(tbodyaccjerkmeany),
  meanoftbodyaccjerkmeanz=mean(tbodyaccjerkmeanz),
  meanoftbodyaccjerkstdx=mean(tbodyaccjerkstdx),
  meanoftbodyaccjerkstdy=mean(tbodyaccjerkstdy),
  meanoftbodyaccjerkstdz=mean(tbodyaccjerkstdz),
  meanoftbodygyromeanx=mean(tbodygyromeanx),
  meanoftbodygyromeany=mean(tbodygyromeany),
  meanoftbodygyromeanz=mean(tbodygyromeanz),
  meanoftbodygyrostdx=mean(tbodygyrostdx),
  meanoftbodygyrostdy=mean(tbodygyrostdy),
  meanoftbodygyrostdz=mean(tbodygyrostdz),
  meanoftbodygyrojerkmeanx=mean(tbodygyrojerkmeanx),
  meanoftbodygyrojerkmeany=mean(tbodygyrojerkmeany),
  meanoftbodygyrojerkmeanz=mean(tbodygyrojerkmeanz),
  meanoftbodygyrojerkstdx=mean(tbodygyrojerkstdx),
  meanoftbodygyrojerkstdy=mean(tbodygyrojerkstdy),
  meanoftbodygyrojerkstdz=mean(tbodygyrojerkstdz),
  meanoftbodyaccmagmean=mean(tbodyaccmagmean),
  meanoftbodyaccmagstd=mean(tbodyaccmagstd),
  meanoftgravityaccmagmean=mean(tgravityaccmagmean),
  meanoftgravityaccmagstd=mean(tgravityaccmagstd),
  meanoftbodyaccjerkmagmean=mean(tbodyaccjerkmagmean),
  meanoftbodyaccjerkmagstd=mean(tbodyaccjerkmagstd),
  meanoftbodygyromagmean=mean(tbodygyromagmean),
  meanoftbodygyromagstd=mean(tbodygyromagstd),
  meanoftbodygyrojerkmagmean=mean(tbodygyrojerkmagmean),
  meanoftbodygyrojerkmagstd=mean(tbodygyrojerkmagstd),
  meanoffbodyaccmeanx=mean(fbodyaccmeanx),
  meanoffbodyaccmeany=mean(fbodyaccmeany),
  meanoffbodyaccmeanz=mean(fbodyaccmeanz),
  meanoffbodyaccstdx=mean(fbodyaccstdx),
  meanoffbodyaccstdy=mean(fbodyaccstdy),
  meanoffbodyaccstdz=mean(fbodyaccstdz),
  meanoffbodyaccjerkmeanx=mean(fbodyaccjerkmeanx),
  meanoffbodyaccjerkmeany=mean(fbodyaccjerkmeany),
  meanoffbodyaccjerkmeanz=mean(fbodyaccjerkmeanz),
  meanoffbodyaccjerkstdx=mean(fbodyaccjerkstdx),
  meanoffbodyaccjerkstdy=mean(fbodyaccjerkstdy),
  meanoffbodyaccjerkstdz=mean(fbodyaccjerkstdz),
  meanoffbodygyromeanx=mean(fbodygyromeanx),
  meanoffbodygyromeany=mean(fbodygyromeany),
  meanoffbodygyromeanz=mean(fbodygyromeanz),
  meanoffbodygyrostdx=mean(fbodygyrostdx),
  meanoffbodygyrostdy=mean(fbodygyrostdy),
  meanoffbodygyrostdz=mean(fbodygyrostdz),
  meanoffbodyaccmagmean=mean(fbodyaccmagmean),
  meanoffbodyaccmagstd=mean(fbodyaccmagstd),
  meanoffbodybodyaccjerkmagmean=mean(fbodybodyaccjerkmagmean),
  meanoffbodybodyaccjerkmagstd=mean(fbodybodyaccjerkmagstd),
  meanoffbodybodygyromagmean=mean(fbodybodygyromagmean),
  meanoffbodybodygyromagstd=mean(fbodybodygyromagstd),
  meanoffbodybodygyrojerkmagmean=mean(fbodybodygyrojerkmagmean),
  meanoffbodybodygyrojerkmagstd=mean(fbodybodygyrojerkmagstd))

# Sort it to look better (Not needed. Data already sorted)
# dft=dft[with(dft,order(activity,subject)),]

## dft contains the dataset as for the step 5

# Output
# write.csv(dft,"dataset5.csv")                  # For my personal use
write.table(df,"dataset4.txt",row.name=FALSE)    # As requested step 4
write.table(dft,"dataset5.txt",row.name=FALSE)   # As requested step 5
