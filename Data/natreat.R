
data <- read.csv("Updated17-3.csv")

miss <- c()
for (i in 1380:1440){
        if(is.na(data[i,]$weight)){
                miss <- c(miss,i)
        }
                
}



temp1 = c()
for(i in miss){
        re = i
        for (j in 1:24){
                
                temp1 = c(temp1,re)
                re = re - 60
        }
}
data <- data[-temp1,]
write.table(data,"filter_treated.csv",sep=",")