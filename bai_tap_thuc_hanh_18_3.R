setwd("C:\\Users\\DELL\\Documents\\thinhda")
#Phân tích cú pháp
args(lm)

#Sinh ng???u nhiên
x = rnorm(10)
x
myobject = rnorm(10)
#Không du???c xài d???u cách
my object = rnorm(10)
myobject


#D???t tên cách nhau b???ng d???u "."
my.object = rnorm(10)
my.object


#R phân bi???t ch??? Hoa vs Thu???ng
My.object.u = 15
My.object.u
my.object.L = 5
My.object.u + my.object.L


#Không nên d???t tên ki???u"_"
my_object
my-object


#H??? tr??? trong R
help(lm)
?lm


#Cách nh???p d??? li???u vào R
age <- c(50,62, 60,40,48,47,57,70,48,67)
insulin <- c(16.5,10.8,32.3,19.3,14.2,11.3,15.5,15.8,16.2,11.2)
tuan <- data.frame(age, insulin)
tuan


#Luu file ??? ch??? khác
setwd("C:\\hihi")
save(tuan, file="tuan.rda")


#Nh???p s??? li???u tr???c ti???p
ins <- edit(data.frame())
ins


#Nh???p s??? li???u t??? text file
setwd("C:\\hihi")
chol = read.table("squid1.txt", header = TRUE)
chol
save(chol, file="chol.rda")


#Nh???p s??? li???t t??? Execl
gh = read.csv("microbiome.csv", header = TRUE)
gh
save(gh, file="gh.rda")


#Nh???p s??? li???u t??? m???t SPSS
library(foreign)
testo = read.spss("testo.sav", to.data.frame = TRUE)
save(testo, file="testo.rda")


#Thông tin v??? d??? li???u
attach(chol)
is.data.frame(chol)
dim(chol)
names(chol)
table(GSI)


#T???o m???t dãy s??? b???ng hàm seq, rep, gl
x = (1:12)
x
seq(12,7)
x = (12:5)
x
seq(12,7)
#seq(from, to, by=) hay seq(from, to, length.out= )
seq(4,6,0.25)
seq(length=10, from=2, to=15)
#rep
rep(10,3)
rep(c(1:4),3)
rep(c(1.2,2.7,4.8),5)
#gl
gl(2,5, labels = c("C", "T"))
rep(1:4, c(2,2,2,2))
rep(1:4, each = 2)
#Ngày tháng
x = .leap.seconds[1:3]
rep(x,2)
rep(as.POSIXct(x), rep(2,3))


#Biên t???p s??? li???u
#Tách r???i d??? li???u
chol = read.table("microbiome.csv", header = TRUE)
attach(chol)
chol
a = subset(chol, Tissue==1)