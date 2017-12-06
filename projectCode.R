lasvegas = read.csv("LasVegas.csv",sep=";",header=TRUE)
lasvegas["HotelQuality"]<-NA
lasvegas$HotelQuality[lasvegas$Score>=4]="High"
lasvegas$HotelQuality[lasvegas$Score<4]="Low"
attach(lasvegas)
summary(lasvegas)
lasvegasquant = lasvegas[,c(2,3,4,5,15)]
lasvegasquant.reg = lm(Score ~ Nr..hotel.reviews + Nr..reviews + Helpful.votes + Hotel.stars,data = lasvegasquant)
summary(lasvegasquant.reg)
plot(lasvegasquant.reg)
