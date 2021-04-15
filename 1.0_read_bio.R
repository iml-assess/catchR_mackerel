##### DETERMINE VISUALLY WHETHER SAMPLES ARE RANDOM OR NOT  ################################################################################
wdimg <- 'img/bio/distributions/'
dir.create(wdimg,recursive = T,showWarnings = F)

y <- sort(unique(bio$year))
dummy <- lapply(y, function(x){
    p <- ggplot(bio[bio$year==x &!is.na(bio$length),],aes(x=length))+
        geom_histogram(binwidth = 5,aes(fill=random))+
        facet_wrap(~sample.id,scale='free_y',ncol = 10)+                  
        geom_text(aes(label=nafo,x=Inf,y=Inf),hjust=1,vjust=1,size=2)+
        geom_text(aes(label=date,x=Inf,y=Inf),hjust=1,vjust=2,size=2)+
        geom_text(aes(label=engin_en,x=Inf,y=Inf),hjust=1,vjust=3,size=2)+
        theme(legend.position = 'none')
    
    n <- ceiling(length(unique(bio[bio$year==x,'sample.id']))/8)
    ggsave(paste0(wdimg,x,'.png'),p,width = unit(18,'cm'),height = unit(n,'cm'))
})

# create new csv file in which to indicate whether samples are random or not (and then replace the old one with this)
miss <- unique(bio[!is.na(bio$length),c('year','nafo','date','engin_en','sample.id','random')])
miss <- miss[order(miss$year,miss$sample.id),]
write.csv(miss,paste0(dir.bio,'carbio_random_new.csv'))
