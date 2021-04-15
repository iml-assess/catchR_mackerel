##### my packages ################################################################################
## CRAN
cran.packages <- c('ggplot2','gridExtra','viridis','plyr','reshape2','lubridate')
install.this <- cran.packages[!(cran.packages %in% utils::installed.packages()[,"Package"])]
if(length(install.this)>1) install.packages(install.this)
dummy <- lapply(cran.packages, require, character.only = TRUE)

## github
git.packages <- c('catchR','CCAM')
install.this <- git.packages[!(git.packages %in% utils::installed.packages()[,"Package"])]
if('catchR' %in% install.this)  devtools::install_github("iml-assess/catchR")
if('CCAM' %in% install.this)  devtools::install_github("elisvb/CCAM")
dummy <- lapply(git.packages, require, character.only = TRUE)

##### my directories ################################################################################
dir.ziff <- 'data/ziff/csv/'            # dir to store csv ziff
dir.nafo <- 'data/nafo/'                # dir to store NAFO data downloaded online
dir.bio  <- 'data/bio/'                 # dir to store carbio + length-freqs 
dir.rdat <- 'Rdata/'                    # dir to store Rdata files 
dir.dat  <- 'data/'

##### my stock #####################################################################################
my.species <- 'mackerel'                # no capitals
my.nafo <- 2:4
my.year <- 1968:2020                    # asessment years

dir.rdat <- paste0(dir.rdat,max(my.year),'/')             # Rdata will saved by assessment end year
dir.create(dir.rdat,recursive = T,showWarnings = F)

##### my ggplot theme ################################################################################
theme_set(theme_mackerel())             # theme_mackerel from catchR

