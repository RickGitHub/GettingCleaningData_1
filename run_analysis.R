run_analysis <- function(){

        library(reshape2)
        
        dirRoot<-paste(getwd(),"/",sep="") ## Root directory of data, ex. 
        
        file1<-paste(dirRoot,"activity_labels.txt",sep="")
        activityLabels<-read.table(file1,sep = "")
        names(activityLabels)<-c("ActivityID","Activity")
        
        file1<-paste(dirRoot,"features.txt",sep="")
        features1<-read.table(file1,sep = "")
        names(features1)<-c("FeatureID","Feature")
        
        ## Merge Train and Test data into common tables
        dirTrain<-paste(dirRoot,"train/",sep="")
        file1<-paste(dirTrain,"subject_train.txt",sep="")
        subjectsTrain<-read.table(file1,sep = "")
        names(subjectsTrain)<-"SubjectID"
        
        file1<-paste(dirTrain,"y_train.txt",sep="")
        y_train<-read.table(file1,sep="")
        names(y_train)<-"ActivityID"
        
        file1<-paste(dirTrain,"x_train.txt",sep="")
        x_train<-read.table(file1,sep="")
        names(x_train)<-features1$Feature ##Each column named from features.txt description
        
        dirTest<-paste(dirRoot,"test/",sep="")
        file1<-paste(dirTest,"subject_test.txt",sep="")
        subjectsTest<-read.table(file1,sep = "")
        names(subjectsTest)<-"SubjectID"
        
        file1<-paste(dirTest,"y_test.txt",sep="")
        y_test<-read.table(file1,sep="")
        names(y_test)<-"ActivityID"
        
        
        file1<-paste(dirTest,"x_test.txt",sep="")
        x_test<-read.table(file1,sep="")
        names(x_test)<-features1$Feature ##Each column named from features.txt description

        train_activities<-cbind(subjectsTrain,y_train,x_train)
        test_activities<-cbind(subjectsTest,y_test,x_test)
        total_activities<-rbind(train_activities,test_activities)
        
        ## Create raw data file to test output with Excel
        ##write.csv(total_activities,file="./total_activities.csv",row.names=FALSE)
        
        ## select only columns ActivityID, SubjectID or with "mean" or "std" in name
        filter1<-grepl("ActivityID",names(total_activities))
        filter2<-grepl("SubjectID",names(total_activities))
        filter3<-grepl("mean",names(total_activities))
        filter4<-grepl("std",names(total_activities))
        
                                                                          
        reducedColumns<-filter1|filter2|filter3|filter4
        total_activities_reduced<-total_activities[,reducedColumns]
        cn<-colnames(total_activities_reduced)
        ## Make long data set by ActivityID and SubjectID
        melt1<-melt(total_activities_reduced,id=c("ActivityID","SubjectID"),measure.vars=cn[3:81],variable.name="Feature")
        
        ## Make wide data set as mean of Feature column by ActivityID and SubjectID
        cast1<-dcast(melt1,ActivityID+SubjectID ~ Feature, mean)
        
        ## Add Activity description labels
        cast2<-merge(activityLabels,cast1,by.x="ActivityID",by.y="ActivityID")
        
        ## Drop the ActivityID column to leave only descriptive Activity for tidy data
        cast2$ActivityID<-NULL

        ## Output wide data to text file in working directory
        write.table(cast2,file="./run_analysis.txt",row.names=FALSE)
        


}

