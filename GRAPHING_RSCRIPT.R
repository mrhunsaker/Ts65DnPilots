install.packages("sciplot")
install.packages("gplots")
install.packages("RCurl")
library(sciplot)
library(gplots)
library(RCurl)
##Spatiotemporal Battery###
##########################
##########################
quartz()
spatiotemporal<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/DSBATTERY.csv",head=TRUE, sep=",")
par(mfrow=c(2,6), oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1,cex.lab=1.75,cex.main=1.75, bty="l")
boxplot(spatiotemporal$METRIC_CLEAR~spatiotemporal$GROUPS,main="Coordinate",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TOPOLOGICAL_CLEAR~spatiotemporal$GROUPS,main="Categorical",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TEMPORAL_CLEAR~spatiotemporal$GROUPS,main="Temporal",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$NOVEL_CLEAR~spatiotemporal$GROUPS,main="Novel Obj",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$OBJECTREC_CLEAR~spatiotemporal$GROUPS,main="Obj Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$LOCREC_CLEAR~spatiotemporal$GROUPS,main="Space Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$METRIC_RED~spatiotemporal$GROUPS,main="Coordinate",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TOPOLOGICAL_RED~spatiotemporal$GROUPS,main="Categorical",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$TEMPORAL_RED~spatiotemporal$GROUPS,main="Temporal",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$NOVEL_RED~spatiotemporal$GROUPS,main="Novel Obj",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$OBJECTREC_RED~spatiotemporal$GROUPS,main="Obj Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
boxplot(spatiotemporal$LOCREC_RED~spatiotemporal$GROUPS,main="Space Rec",ylab="Mean Ratio Value [-1.1]", ylim=c(-.4,.65),col=c("Darkgrey","Red"))
mtext("Spatiotemporal and Contextual Processing",side=3,outer=T,cex=1.75,line=2)
mtext("No Distal Cues Available",at=.25,side=2,outer=T,cex=1.2,line=2)
mtext("Distal Cues Available",at=.75,side=2,outer=T,cex=1.2,line=2)
quartz()

#Spontaneous Alternation###
##########################
##########################
par(oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
alternation<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/DSBATTERY.csv",head=TRUE, sep=",")
boxplot(alternation$ALTERNATIONS~alternation$GROUPS,main="Spontaneous Alternation",ylab="Percent Alternations",col=c("Darkgrey","Red"))
quartz()

##Ladder Rung Walking###
##########################
##########################
ladder<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/DSLADDER.csv",head=TRUE, sep=",")
par(mfrow=c(1,2), oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
boxplot(ladder$Ladder_RAW~ladder$groups,main="Rung Walk Task",ylab="Number of Foot Slips in 60 sec",col=c("Darkgrey","Red"))
boxplot(ladder$Ladder_ADJUSTED~ladder$groups,main="Rung Walk Task (Adjusted)",ylab="Probability of Foot Slip / Step",col=c("Darkgrey","Red"))
mtext("Parallel Rung Walk",side=3,outer=T,cex=1.75,line=2)
quartz()

##Cheeseboard###
##########################
##########################
cheeseboard<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/Cheeseboard.csv",head=TRUE, sep=",")
cheeseboard$GROUPS<-factor(cheeseboard$GROUPS,c("2N", "Ts65Dn"))
cheeseboard$DAYS<-as.factor(cheeseboard$DAYS)
par(mfrow=c(2,2), oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
lineplot.CI(cheeseboard$DAYS,cheeseboard$LATENCY,group=cheeseboard$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Seconds",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1, main="Mean Latency",pch="O",lty=c(1,6),x.leg=2.75)
lineplot.CI(cheeseboard$DAYS,cheeseboard$PercentLATENCY,group=cheeseboard$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Percent vs. Day 1",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1, main="Percent Latency",pch="O",lty=c(1,6),x.leg=2.75)
lineplot.CI(cheeseboard$DAYS,cheeseboard$DISTANCE,group=cheeseboard$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Distance (cm)",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1, main="Mean Distance",pch="O",lty=c(1,6),x.leg=2.75)
lineplot.CI(cheeseboard$DAYS,cheeseboard$PercentDISTANCE,group=cheeseboard$GROUPS,type="b", x.cont=FALSE,col=c("Darkgrey","Red"), fixed=TRUE,lwd=3,cex.axis=1.25,ylab="Percent vs. Day 1",xlab="Blocks of 4 Trials",cex.lab=1.5,cex.main=1.75,cex.leg=1, main="Percent Distance",pch="O",lty=c(1,6),x.leg=2.75)
mtext("Cheeseboard Performance",side=3,outer=T,cex=1.75,line=2)
quartz()

##Response_Learning###
##Acquisition#########
##########################
response_learning<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/Response_learning.csv",head=TRUE, sep=",")
par(oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
lineplot.CI(response_learning$DAY, response_learning$Percent_Correct, group=response_learning$GROUP, x.leg=1,y.leg=90,col=c("Darkgrey","Red"), cex=1.25,lwd=3,ylab="Mean Percent Correct of 20 Trials", xlab="Day",main="Response Learning",cex.lab=1.75, cex.axis=1.25, cex.main=1.75,cex.leg=1.5)
quartz()

#####Reversal Test##########
###Data_RAW##########
response_test<-read.csv("/Users/Ryan_GITHUB_REPOSITORIES/Ts65DnPilots/Data/Response_test.csv",head=TRUE, sep=",")
par(mfrow=c(4,5), oma=c(0,4,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.5, bty="l")
plot(cumsum(response_test[,1])/seq_along(response_test[,1]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,2])/seq_along(response_test[,2]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,3])/seq_along(response_test[,3]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,4])/seq_along(response_test[,4]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,5])/seq_along(response_test[,5]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,6])/seq_along(response_test[,6]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,7])/seq_along(response_test[,7]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,8])/seq_along(response_test[,8]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,9])/seq_along(response_test[,9]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,10])/seq_along(response_test[,10]),type="o",ylab="Reversals", xlab="Trial",main="",col="Darkgrey")
plot(cumsum(response_test[,11])/seq_along(response_test[,11]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,12])/seq_along(response_test[,12]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,13])/seq_along(response_test[,13]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,14])/seq_along(response_test[,14]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,15])/seq_along(response_test[,15]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,16])/seq_along(response_test[,16]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,17])/seq_along(response_test[,17]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,18])/seq_along(response_test[,18]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,19])/seq_along(response_test[,19]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
plot(cumsum(response_test[,20])/seq_along(response_test[,20]),type="o",ylab="Reversals", xlab="Trial",main="",col="Red")
mtext("Reversal Learning",side=3,outer=T,cex=1.75,line=2)
mtext("Ts65Dn",at=.25,side=2,outer=T,cex=1.2,line=2)
mtext("2N Control",at=.75,side=2,outer=T,cex=1.2,line=2)
quartz()

#####Reversal##########
###Changepoints##########
response_factors<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/Reversal_Factors.csv",head=TRUE, sep=",")
par(mfrow=c(1,3), oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
boxplot(response_factors$response_changepoints~response_factors$group, ylab="Change Point",xlab="", main="Behavioral Change Point", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
boxplot(response_factors$response_perseverative~response_factors$group, ylab="Perseverative Errors",xlab="", main="Perseverative", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
boxplot(response_factors$response_regressive~response_factors$group, ylab="Regressive Errors",xlab="", main="Regressive", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
mtext("Reversal Learning Test Performance",side=3,outer=T,cex=1.75,line=2)
quartz()

##Capellini Handling###
##########################
##########################
capellini<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/Capellini.csv",head=TRUE, sep=",")
quartz()
par(oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
split.screen(figs=c(1,2))
split.screen(figs=c(2,2),screen=2)
screen(1)
boxplot(capellini$Latency~capellini$GROUP, ylab="Seconds", main="Latency",xlab="", col=c("Darkgrey","Red"))
screen(3)
boxplot(capellini$Atypical_Paw_Together~capellini$GROUP, ylab="Number",main="Paw Overlap",xlab="", col=c("Darkgrey","Red"))
screen(4)
boxplot(capellini$Atypical_NoContact~capellini$GROUP, ylab="Number",main="No Contact",xlab="", col=c("Darkgrey","Red"))
screen(5)
boxplot(capellini$Atypical_Mouth_Pull~capellini$GROUP, main="Mouth Pull",ylab="Number",,xlab="", col=c("Darkgrey","Red"))
screen(6)
boxplot(capellini$Sum_Atypical~capellini$GROUP, ylab="#",main="Atypical",xlab="", col=c("Darkgrey","Red"))
mtext("Capellini handling Test",side=3,outer=T,cex=1.75,line=2)
#########################




###Nesting########
#########################
nesting<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/Nesting.csv",head=TRUE, sep=",")
par(mfrow=c(1,3), oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
boxplot(nesting$latency_contact~nesting$group, ylab="Seconds",xlab="", main="Contact with Nest Tube", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
boxplot(nesting$latency_dig~nesting$group, ylab="Seconds",xlab="", main="Time to Start Digging", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
boxplot(nesting$latency_finish~nesting$group, ylab="Seconds",xlab="", main="Time to Finish Nest", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
mtext("Nesting",side=3,outer=T,cex=1.75,line=2)
quartz()

###Anxiety########
#########################
neophagia<-read.csv("/Users/GITHUB_REPOSITORIES/Ts65DnPilots/Data/Hyponeophagia.csv",head=TRUE, sep=",")
par(mfrow=c(1,3), oma=c(0,2,4,0) + 0.1,mar=c(4,7,2,1))
par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75, bty="l")
boxplot(neophagia$latency_novelfood~neophagia$group, ylab="Latency to Contact",xlab="Group", main="Novel Food, Familiar Location", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
boxplot(neophagia$latency_novelenvironment~neophagia$group, ylab="Latency to Contact",xlab="Group", main="Familiar Food, Novel Location", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
boxplot(neophagia$latency_both~neophagia$group, ylab="Latency to Contact",xlab="Group", main="Novel Food, Novel Location", col=c("Darkgrey","Red"),par(lwd=2,cex.axis=1.25,cex.lab=1.75,cex.main=1.75))
mtext("Neophagia",side=3,outer=T,cex=1.75,line=2)
quartz()
