omnibus<-cbind(spatiotemporal$GROUP, spatiotemporal$AMBIGUOUS_CLEAR,spatiotemporal$AMBIGUOUS_RED,spatiotemporal$AMBIGUOUS_CTRL_CLEAR,spatiotemporal$AMBIGUOUS_CTRL_RED,spatiotemporal$METRIC_CLEAR,spatiotemporal$METRIC_RED,spatiotemporal$TOPOLOGICAL_CLEAR,spatiotemporal$TOPOLOGICAL_RED,spatiotemporal$LOCREC_CLEAR,spatiotemporal$LOCREC_RED, spatiotemporal$OBJECTREC_CLEAR,spatiotemporal$OBJECTREC_RED,spatiotemporal$OBJECTREC_24_CLEAR,spatiotemporal$OBJECTREC_24_RED,spatiotemporal$NOVEL_CLEAR,spatiotemporal$NOVEL_RED,spatiotemporal$TEMPORAL_CLEAR,spatiotemporal$TEMPORAL_RED,spatiotemporal$ALTERNATIONS,capellini$Latency, capellini$Atypical_Paw_Together,capellini$Atypical_NoContact,capellini$Atypical_Mouth_Pull,capellini$Sum_Atypical,nesting$latency_contact, nesting$latency_dig,nesting$latency_finish,response_factors$response_changepoints, response_factors$response_perseverative,response_factors$response_regressive, neophagia$latency_novelfood,neophagia$latency_novelenvironment,neophagia$latency_both)

colnames(omnibus)<-c("GROUP","AMBIGUOUS_CLEAR","AMBIGUOUS_RED","AMBIGUOUS_CONTROL_CLEAR","AMBIGUOUS_CONTROL_RED","METRIC_CLEAR","METRIC_RED","TOPOLOGICAL_CLEAR","TOPOLOGICAL_RED","LOCREC_CLEAR","LOCREC_RED","OBJECTREC_1HR_CLEAR","OBJECTREC_1HR_RED","OBJECTREC_24HR_CLEAR","OBJECTREC_24HR_RED","NOVEL_CLEAR","NOVEL_RED","TEMPORAL_CLEAR","TEMPORAL_RED","SPONTANEOUS_ALTERNATION","CAPELLINI_LATENCY","CAPELLINI_ATYPICAL_PAW_TOGETHER","CAPELLINI_ATYPICAL_NOCONTACT","CAPELLINI_ATYPICAL_MOUTH_PULL","CAPELLINI_SUM_ATYPICAL","NESTING_LATENCY_CONTACT","NESTING_LATENCY_DIG","NESTING_LATENCY_FINISH","RESPONSE_FACTORS_RESPONSE_CHANGEPOINTS","RESPONSE_FACTORS_RESPONSE_PERSEVERATIVE","RESPONSE_FACTORS_RESPONSE_REGRESSIVE","NEOPHAGIA_LATENCY_NOVELFOOD","NEOPHAGIA_LATENCY_NOVELENVIRONENT","NEOPHAGIA_LATENCY_BOTH")

rownames(omnibus)<-c("2N_1","2N_2","2N_3","2N_4","2N_5","2N_6","2N_7","2N_8","2N_9","2N_0","Ts65Dn_1","Ts65Dn_2","Ts65Dn_3","Ts65Dn_4","Ts65Dn_5","Ts65Dn_6","Ts65Dn_7","Ts65Dn_8","Ts65Dn_9","Ts65Dn_0")

##########################################################################################

plot.PCA(fit, axes = c(1, 2), choix = "var",ellipse = NULL, xlim = NULL, ylim = NULL, habillage="none",col.hab = NULL, col.ind="black", col.ind.sup="blue",col.quali="magenta", col.quanti.sup="blue", col.var=palette(rainbow(7)),label = c("all","none","ind","ind.sup","quali","var","quanti.sup"),invisible = c("none","ind","ind.sup","quali","var","quanti.sup"),lim.cos2.var = 0., title = "Principal Component Analysis of Ts65Dn Task Battery", palette=palette(rainbow(27)),autoLab = "yes", new.plot = FALSE, select = NULL,unselect = 0.7, shadowtext = FALSE,cex=0.5)
quartz()
plot.PCA(fit, axes = c(1, 2), choix = "ind",ellipse = NULL, xlim = NULL, ylim = NULL, habillage="none",col.hab = NULL, col.ind=palette(rainbow(27)), col.ind.sup="blue",col.quali="magenta", col.quanti.sup="blue", col.var=palette(rainbow(7)),label = c("all","none","ind","ind.sup","quali","var","quanti.sup"),invisible = c("none","ind","ind.sup","quali","var","quanti.sup"),lim.cos2.var = 0., title = "Principal Component Analysis of Ts65Dn Task Battery", palette=palette(rainbow(27)),autoLab = "yes", new.plot = FALSE, select = NULL,unselect = 0.7, shadowtext = FALSE,cex=1.5)
quartz()
##########################################################################################

Results:
fit$eig
         eigenvalue percentage of variance cumulative percentage of variance
comp 1  16.08352897            59.56862582                          59.56863
comp 2   2.27593668             8.42939512                          67.99802
comp 3   1.62676779             6.02506590                          74.02309
comp 4   1.39054013             5.15014863                          79.17324
comp 5   1.23535198             4.57537769                          83.74861
comp 6   0.92821391             3.43782931                          87.18644
comp 7   0.75380925             2.79188611                          89.97833
comp 8   0.62297860             2.30732814                          92.28566
comp 9   0.47433466             1.75679505                          94.04245
comp 10  0.37489382             1.38849562                          95.43095
comp 11  0.31671240             1.17300887                          96.60396
comp 12  0.26213970             0.97088780                          97.57484
comp 13  0.20556409             0.76134849                          98.33619
comp 14  0.15937621             0.59028227                          98.92647
comp 15  0.11535330             0.42723444                          99.35371
comp 16  0.09418426             0.34883057                          99.70254
comp 17  0.05189724             0.19221201                          99.89475
comp 18  0.01568184             0.05808088                          99.95283
comp 19  0.01273516             0.04716727                         100.00000

##########################################################################################





