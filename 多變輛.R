A<-c(1,18.95,2,19.00,3,17.95,3,15.54,4,14.00,5,12.95,6.00,8.94,8,7.49,9,6,11,3.99)
A1<-matrix(A,2,10)

A2<-cov(cbind(A1[1,],A1[2,]))  
A3<-solve(A2)
A4<-rbind(mean(A1[1,]),mean(A1[2,]))
x1<-t(A1[,1]-A4)%*%A3%*%(A1[,1]-A4)
x2<-t(A1[,2]-A4)%*%A3%*%(A1[,2]-A4)
x3<-t(A1[,3]-A4)%*%A3%*%(A1[,3]-A4)
x4<-t(A1[,4]-A4)%*%A3%*%(A1[,4]-A4)
x5<-t(A1[,5]-A4)%*%A3%*%(A1[,5]-A4)
x6<-t(A1[,6]-A4)%*%A3%*%(A1[,6]-A4)
x7<-t(A1[,7]-A4)%*%A3%*%(A1[,7]-A4)
x8<-t(A1[,8]-A4)%*%A3%*%(A1[,8]-A4)
x9<-t(A1[,9]-A4)%*%A3%*%(A1[,9]-A4)
x10<-t(A1[,10]-A4)%*%A3%*%(A1[,10]-A4)#4.26(a)

A4<-cbind(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10)
plot(qchisq(ppoints(A4),2),sort(A4),main ="chi-square plot",xlab = "Quntiles",ylab = "sort distance")
abline(a=0,b=1)#4.26(C)
# good job

# PPAP