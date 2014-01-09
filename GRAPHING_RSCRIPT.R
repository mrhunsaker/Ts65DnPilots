install.packages("sciplots")
install.packages(gplots)
install.packages(RCurl)
library(sciplots)
library(gplots)
library(RCurl)
##Spatiotemporal Battery###
##########################
##########################
x=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/DSBATTERY.txt")
spatiotemporal<-read.csv(text=x,head=TRUE, sep=",")
par(mfrow=c(2,6))
par(oma=c(1,4,4,1))
boxplot(spatiotemporal$METRIC_CLEAR~spatiotemporal$GROUPS,main="Metric",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TOPOLOGICAL_CLEAR~spatiotemporal$GROUPS,main="Topological",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TEMPORAL_CLEAR~spatiotemporal$GROUPS,main="Temporal",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$NOVEL_CLEAR~spatiotemporal$GROUPS,main="Novelty",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$OBJECTREC_CLEAR~spatiotemporal$GROUPS,main="Object Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$LOCREC_CLEAR~spatiotemporal$GROUPS,main="Location Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$METRIC_RED~spatiotemporal$GROUPS,main="Metric",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TOPOLOGICAL_RED~spatiotemporal$GROUPS,main="Topological",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TEMPORAL_RED~spatiotemporal$GROUPS,main="Temporal",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$NOVEL_RED~spatiotemporal$GROUPS,main="Novelty",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$OBJECTREC_RED~spatiotemporal$GROUPS,main="Object Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$LOCREC_RED~spatiotemporal$GROUPS,main="Location Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.55),col=c("Darkgrey","Red"))
mtext("2N and Ts65Dn Battery Comparison",side=3,outer=T,cex=1.2,line=2)
mtext("Red Box",at=.25,side=2,outer=T,cex=1.2,line=2) 
mtext("Clear Box",at=.75,side=2,outer=T,cex=1.2,line=2) 
quartz()

#Spontaneous Alternation###
##########################
##########################
x=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/DSBATTERY.txt")
alternation<-read.csv(text=x,head=TRUE, sep=",")
boxplot(alternation$ALTERNATIONS~alternation$GROUPS,main="Spontaneous Alternation",ylab="Percentage Of Trials with Alternations",col=c("Darkgrey","Red"))
#dev.off()
quartz()

##Ladder Rung Walking###
##########################
##########################
y=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/DSLADDER.txt")
ladder<-read.csv(text=y,head=TRUE, sep=",")
par(mfrow=c(1,2))
boxplot(ladder$Ladder_RAW~ladder$groups,main="Rung Walk Task",ylab="Number of Foot Slips in 60 sec",col=c("Darkgrey","Red"))
boxplot(ladder$Ladder_ADJUSTED~ladder$groups,main="Rung Walk Task (Adjusted)",ylab="Probability of Foot Slip / Step",col=c("Darkgrey","Red"))
quartz()

##Cheeseboard###
##########################
##########################
z=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/Cheeseboard.csv")
cheeseboard<-read.csv(text=z,head=TRUE, sep=",")
cheeseboard$GROUPS<-factor(cheeseboard$GROUPS,c("2N", "Ts65Dn"))
cheeseboard$DAYS<-as.factor(cheeseboard$DAYS)
lineplot.CI(cheeseboard$DAYS,cheeseboard$LATENCY,group=cheeseboard$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Mean Latency (s)",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1.5, main="Dryland Version of the Morris Water Maze",pch="O",lty=c(1,6),x.leg=3.25)
quartz()
lineplot.CI(cheeseboard$DAYS,cheeseboard$PercentLATENCY,group=cheeseboard$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Percent Latency Compared to Block 1",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1.5, main="Dryland Version of the Morris Water Maze",pch="O",lty=c(1,6),x.leg=3.25)
quartz()
lineplot.CI(cheeseboard$DAYS,cheeseboard$DISTANCE,group=cheeseboard$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Mean Distance (cm)",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1.5, main="Dryland Version of the Morris Water Maze",pch="O",lty=c(1,6),x.leg=3.25)
quartz()
lineplot.CI(cheeseboard$DAYS,cheeseboard$PercentDISTANCE,cheeseboard=data$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Percent Distance Compared to Block 1",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1.5, main="Dryland Version of the Morris Water Maze",pch="O",lty=c(1,6),x.leg=3.25)
quartz()

##Response_Learning###
##Acquisition#########
##########################
a=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/Response_learning.csv")
response_learning<-read.csv(text=a,head=TRUE, sep=",")
lineplot.CI(response_learning$DAY, response_learning$Percent_Correct, group=response_learning$GROUP, x.leg=1,y.leg=90,col=c("Darkgrey","Red"), cex=1.25,lwd=3,ylab="Mean Percent Correct of 20 Trials", xlab="Day",main="Response Learning",cex.lab=1.25, cex.axis=1.25, cex.main=1.75,cex.leg=1.5)
quartz()

#####Reversal Test##########
###Data_RAW##########
b=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/Response_test.csv")
response_test<-read.csv(text=b,head=TRUE, sep=",")
par(mfrow=c(4,5))
par(oma=c(4,4,4,4))
par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.5)
plot(response_test$X2N,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 1",col="Darkgrey")
plot(response_test$X2N.1,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 2",col="Darkgrey")
plot(response_test$X2N.2,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 3",col="Darkgrey")
plot(response_test$X2N.3,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 4",col="Darkgrey")
plot(response_test$X2N.4,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 5",col="Darkgrey")
plot(response_test$X2N.5,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 6",col="Darkgrey")
plot(response_test$X2N.6,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 7",col="Darkgrey")
plot(response_test$X2N.7,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 8",col="Darkgrey")
plot(response_test$X2N.8,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 9",col="Darkgrey")
plot(response_test$X2N.9,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="2N Subject 10",col="Darkgrey")
plot(response_test$Ts65Dn,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 1",col="Red")
plot(response_test$Ts65Dn.1,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 2",col="Red")
plot(response_test$Ts65Dn.2,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 3",col="Red")
plot(response_test$Ts65Dn.3,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 4",col="Red")
plot(response_test$Ts65Dn.4,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 5",col="Red")
plot(response_test$Ts65Dn.5,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 6",col="Red")
plot(response_test$Ts65Dn.6,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 7",col="Red")
plot(response_test$Ts65Dn.7,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 8",col="Red")
plot(response_test$Ts65Dn.8,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 9",col="Red")
plot(response_test$Ts65Dn.9,type="o",ylab="Choice (1=Reverse, 0= Perseverate)", xlab="Trial #",main="Ts65Dn Subject 10",col="Red")
mtext("Reversal Learning Test Performance",side=3,outer=T,cex=1.75,line=2)
quartz()

#####Reversal##########
###Changepoints##########
c=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/Response_test.csv")
response_factors<-read.csv(text=c,head=TRUE, sep=",")
par(mfrow=c(1,3))
par(oma=c(4,4,4,4))
boxplot(response_factors$response_changeponts~response_factors$group, ylab="Cumulative Behavioral Change Point",xlab="Group", main="Behavioral Change Point", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
boxplot(response_factors$response_perseverative~response_factors$group, ylab="Perseverative Errors in 1st 20 Trials",xlab="Group", main="Perseverative Errors", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
boxplot(response_factors$response_regressive~response_factors$group, ylab="Regressive Errors",xlab="Group", main="Regressive Errors", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
mtext("Reversal Learning Test Performance",side=3,outer=T,cex=1.75,line=2)
quartz()

##Capellini Handling###
##########################
##########################
d=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/Capellini.csv")
capellini<-read.csv(text=d,head=TRUE, sep=",")
par(mfrow=c(1,5))
par(oma=c(4,4,4,4))
par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75)
capellini$GROUP<-factor(capellini$GROUP, c("2N","Ts65Dn"))
boxplot(capellini$Latency~capellini$GROUP, ylab="Latency to Consume Pasta",xlab="Group", col=c("Darkgrey","Red"))
boxplot(capellini$Atypical_Paw_Together~capellini$GROUP, ylab="Number of Times Paws Overlapped",xlab="Group", col=c("Darkgrey","Red"))
boxplot(capellini$Atypical_NoContact~capellini$GROUP, ylab="Number of Times the Paw Lost Contact",xlab="Group", col=c("Darkgrey","Red"))
boxplot(capellini$Atypical_Mouth_Pull~capellini$GROUP, ylab="Number of Mouth Pull Events",xlab="Group", col=c("Darkgrey","Red"))
boxplot(capellini$Sum_Atypical~capellini$GROUP, ylab="Total of Atypical Behaviors",xlab="Group", col=c("Darkgrey","Red"))
mtext("Capellini handling Test",side=3,outer=T,cex=1.2,line=2)
quartz()

###Nesting########
#########################
e=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/Nesting.csv")
nesting<-read.csv(text=e,head=TRUE, sep=",")
par(mfrow=c(1,3))
par(oma=c(4,4,4,4))
boxplot(nesting$latency_contact~nesting$group, ylab="Latency to Contact",xlab="Group", main="Contact with Nest Tube", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
boxplot(nesting$latency_dig~nesting$group, ylab="Latency to Start Digging",xlab="Group", main="Time to Start Digging", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
boxplot(nesting$latency_finish~nesting$group, ylab="Latecy to Finish Nest",xlab="Group", main="Time to Finish Nest", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
mtext("Nesting",side=3,outer=T,cex=1.75,line=2)
quartz()

###Anxiety########
#########################
f=getURL("https://raw.github.com/mrhunsaker/Ts65DnPilots/master/Data/Hyponeophagia.csv")
neophagia<-read.csv(text=f,head=TRUE, sep=",")
par(mfrow=c(1,3))
par(oma=c(4,4,4,4))
boxplot(neophagia$latency_novelfood~neophagia$group, ylab="Latency to Contact",xlab="Group", main="Novel Food, Familiar Location", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
boxplot(neophagia$latency_novelenvironment~neophagia$group, ylab="Latency to Contact",xlab="Group", main="Familiar Food, Novel Location", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
boxplot(neophagia$latency_both~neophagia$group, ylab="Latency to Contact",xlab="Group", main="Novel Foor, Novel Location", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.25,cex.main=1.75))
mtext("Neophagia",side=3,outer=T,cex=1.75,line=2)
quartz()