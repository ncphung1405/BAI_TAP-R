#chuong 7 :
setwd("D:\\all_files")
getwd()
#Roulin v� Bersier
#xem x�t h�nh vi c???a con c� xem n� ph???n ???ng nhu th??? n�o ?
#khi m� c� s??? hi???n di???n c???a c� b???, c� m??? ?
#21.30 d???n 5.30 qua 2 d�m kh�c nhau
Owls = read.table(file = "Owls.txt", header = TRUE)
names(Owls)
str(Owls)
boxplot(Owls$NegPerChick)
par(mfrow= c(2,2), mar= c(3,3,2,1))
boxplot(NegPerChick ~ SexParent, data = Owls)
boxplot(NegPerChick ~ FoodTreatment , data = Owls)
boxplot(NegPerChick ~ SexParent*FoodTreatment ,
        names = c("F/Dep","M/Dep","F/Sat","M/Sat") ,
        data = Owls)
boxplot(NegPerChick ~ �..Nest, data = Owls)
par(mar =c(2,2,3,3))
boxplot(NegPerChick ~ �..Nest, 
        data = Owls,
        axes = FALSE ,
        ylim = c(-3,8.5))
axis(2,at= c(0,2,4,6,8))
text(x = 1:27 , y = -2,labels =unique(Owls$�..Nest),
     cex=1,srt=60)
#7.3 Boxplot s??? d???ng d??? li???u sinh v???t bi???n RIKZ@.txt
#V??? Bi???u d??? Boxplot gi???a Richness ~ beach
RIKZ2 = read.table(file = "RIKZ2.txt",
                   header = TRUE)
names(RIKZ2)
str(RIKZ2)

boxplot(Richness~ Beach , data = RIKZ2, col="blue")
#v??? bi???ud???boxplox gi???a R~Transect c???a dataset vegatation2.txt
Vegetation2 = read.table(file = "Vegetation2.txt",header = TRUE)
boxplot(R~Transect , data = Vegetation2, col="pink")
#?? nghia c???a c�c tham s??? trong boxplot
#formula :m???t c�ng th???c, ch???ng h???n nhu y ~ grp, trong d� y l� m???t vecto s??? c???a c�c gi� tr??? d??? li???u du???c chia th�nh c�c nh�m theo bi???n nh�m grp (thu???ng l� m???t nh�n t???). Luu ?? r???ng ~ g1 + g2 tuong duong v???i g1: g2.
#data : data.frame (ho???c danh s�ch) m� t??? d� c�c bi???n trong c�ng th???c s??? du???c l???y.
#subset : m???t vecto t�y ch???n ch??? d???nh m???t t???p h???p con c�c quan s�t du???c s??? d???ng d??? v??? bi???u d???
#na.action :m???t h�m cho bi???t di???u g?? s??? x???y ra khi d??? li???u ch???a NA. M???c d???nh l� b??? qua c�c gi� tr??? b??? thi???u trong ph???n h???i ho???c nh�m.
#xlab, ylab :ch� th�ch tr???c x v� tr???c y, k??? t??? R 3.6.0 v???i m???c d???nh kh�ng tr???ng. C� th??? b??? tri???t ti�u b???i ann = FALSE.
#ann :l�gic cho bi???t n???u c�c tr???c n�n du???c ch� th�ch (b???i xlab v� ylab).
#drop, sep, lex.order	:du???c chuy???n d???n split.default, xem ??? d�
#range :di???u n�y x�c d???nh d??? d�i c???a r�u �m muu ra kh???i h???p. N???u ph???m vi l� duong, r�u s??? m??? r???ng d???n di???m d??? li???u c???c doan nh???t, kh�ng qu� ph???m vi nh�n v???i ph???m vi li�n ph???n tu t�nh t??? h???p. Gi� tr??? b???ng 0 l�m cho r�u m??? r???ng d???n c�c c???c d??? li???u
#width :m???t vecto cung c???p chi???u r???ng tuong d???i c???a c�c h???p t???o n�n bi???u d???
#varwidth :n???u varwidth l� TRUE, c�c h???p du???c v??? v???i chi???u r???ng t??? l??? v???i can b???c hai c???a s??? lu???ng quan s�t trong c�c nh�m.
#at :vecto s??? cung c???p v??? tr� noi c�c � h???p s??? du???c v???, d???c bi???t khi th�m = TRUE; m???c d???nh l� 1: n v???i n l� s??? h???p.
#add : h???p l??, n???u d�ng, h??y th�m boxplot v�o c???t truy???n hi???n t???i
#log :k?? t??? cho bi???t n???u x ho???c y ho???c c??? hai t???a d??? n�n du???c v??? trong thang log.
#col :  n???u col kh�ng ph???i l� null, n� du???c gi??? d???nh l� ch???a c�c m�u du???c s??? d???ng d??? t� m�u cho ph???n th�n c???a c�c � h???p. Theo m???c d???nh, ch�ng c� m�u n???n
#names :nh�m nh??n s??? du???c in du???i m???i �. C� th??? l� m???t vecto k?? t??? ho???c m???t bi???u th???c (xem so d???).
#outline : n???u ph�c th???o kh�ng d�ng, c�c gi� tr??? ngo???i lai s??? kh�ng du???c v??? (nhu c�c di???m trong khi S + s??? d???ng c�c du???ng).
