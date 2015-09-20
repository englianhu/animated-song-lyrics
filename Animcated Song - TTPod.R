##  Windows OS and phantomjs.exe is Win binary apps
if(suppressPackageStartupMessages(!require('BBmisc'))){
  suppressPackageStartupMessages(install.packages('BBmisc'))
  }
if(suppressPackageStartupMessages(!require('tmcn'))){
  suppressPackageStartupMessages(install.packages('tmcn', dep=TRUE, repos='http://R-Forge.R-project.org'))
  }

suppressPackageStartupMessages(library('BBmisc'))
suppressAll(lib(c('RSelenium','ggplot2','animation','rvest','jiebaR','tmcn','audio')))

lnk_ttPod <- 'http://www.dongting.com/#a=searchlist&q=%E8%AE%A9%E5%85%A8%E4%B8%96%E7%95%8C%E9%83%BD%E5%BF%98%E4%BA%86%E6%88%91'
lnk_QQ <- 'http://y.qq.com/#type=song&id=234582&url=http%3A%2F%2Fi.y.qq.com%2Fs.plcloud%2Ffcgi-bin%2Ffcg_yqq_song_detail_info_cp.fcg%3Fsongid%3D234582%26play%3D0'

checkForServer(update=TRUE)
startServer()
webDr <- remoteDriver(browserName='phantomjs')
webDr$open(silent=TRUE)
webDr$navigate(lnk_ttPod)
webDr$getPageSource()[[1]]


webDr$close()
webDr$closeServer()


