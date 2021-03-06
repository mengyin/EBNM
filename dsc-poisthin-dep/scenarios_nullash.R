sourceDir("datamakers")

# alpha=0 models
for (nsamp in c(2,10,50)){
  addScenario(dsc_gtex,name=paste0("spiky,nsamp=",nsamp),
              fn=datamaker,
              args=list(ngene=10000, nsamp=nsamp, pi0="random",
                        betaargs=list(betapi=c(.4,.2,.2,.2),betamu=c(0,0,0,0),betasd=c(.25,.5,1,2)/sqrt(2*nsamp-2)),
                        breaksample=FALSE, nctl=100),
              seed=1:50)

  addScenario(dsc_gtex,name=paste0("near_normal,nsamp=",nsamp),
              fn=datamaker,
              args=list(ngene=10000, nsamp=nsamp, pi0="random",
                        betaargs=list(betapi=c(2/3,1/3),betamu=c(0,0),betasd=c(1,2)/sqrt(2*nsamp-2)),
                        breaksample=FALSE, nctl=100),
              seed=1:50)

  addScenario(dsc_gtex,name=paste0("flat_top,nsamp=",nsamp),
              fn=datamaker,
              args=list(ngene=10000, nsamp=nsamp, pi0="random",
                        betaargs=list(betapi=rep(1/7,7),betamu=c(-1.5,-1,-0.5,0,0.5,1,1.5),betasd=rep(0.5,7)/sqrt(2*nsamp-2)),
                        breaksample=FALSE, nctl=100),
              seed=1:50)

  addScenario(dsc_gtex,name=paste0("big-normal,nsamp=",nsamp),
              fn=datamaker,
              args=list(ngene=10000, nsamp=nsamp, pi0="random",
                        betaargs=list(betapi=c(1),betamu=c(0),betasd=c(4)/sqrt(2*nsamp-2)),
                        breaksample=FALSE, nctl=100),
              seed=1:50)

  addScenario(dsc_gtex,name=paste0("bimodal,nsamp=",nsamp),
              fn=datamaker,
              args=list(ngene=10000, nsamp=nsamp, pi0="random",
                        betaargs=list(betapi=c(0.5,0.5),betamu=c(-2,2),betasd=c(1,1)/sqrt(2*nsamp-2)),
                        breaksample=FALSE, nctl=100),
              seed=1:50)
}

# alpha=1 models
# for (nsamp in c(2,10,50)){
#   addScenario(dsc_gtex,name=paste0("spiky,nsamp=",nsamp,",alpha=1"),
#               fn=datamaker,
#               args=list(ngene=10000, nsamp=nsamp, pi0="random",
#                         betaargs=list(betapi=c(.4,.2,.2,.2),betamu=c(0,0,0,0),betasd=c(.25,.5,1,2)),
#                         breaksample=FALSE, nctl=100, alpha=1),
#               seed=1:50)
#   
#   addScenario(dsc_gtex,name=paste0("near_normal,nsamp=",nsamp,",alpha=1"),
#               fn=datamaker,
#               args=list(ngene=10000, nsamp=nsamp, pi0="random",
#                         betaargs=list(betapi=c(2/3,1/3),betamu=c(0,0),betasd=c(1,2)),
#                         breaksample=FALSE, nctl=100, alpha=1),
#               seed=1:50)
# 
#   addScenario(dsc_gtex,name=paste0("flat_top,nsamp=",nsamp,",alpha=1"),
#               fn=datamaker,
#               args=list(ngene=10000, nsamp=nsamp, pi0="random",
#                         betaargs=list(betapi=rep(1/7,7),betamu=c(-1.5,-1,-0.5,0,0.5,1,1.5),betasd=rep(0.5,7)),
#                         breaksample=FALSE, nctl=100, alpha=1),
#               seed=1:50)
# 
#   addScenario(dsc_gtex,name=paste0("big-normal,nsamp=",nsamp,",alpha=1"),
#               fn=datamaker,
#               args=list(ngene=10000, nsamp=nsamp, pi0="random",
#                         betaargs=list(betapi=c(1),betamu=c(0),betasd=c(4)),
#                         breaksample=FALSE, nctl=100, alpha=1),
#               seed=1:50)
# 
#   addScenario(dsc_gtex,name=paste0("bimodal,nsamp=",nsamp,",alpha=1"),
#               fn=datamaker,
#               args=list(ngene=10000, nsamp=nsamp, pi0="random",
#                         betaargs=list(betapi=c(0.5,0.5),betamu=c(-2,2),betasd=c(1,1)),
#                         breaksample=FALSE, nctl=100, alpha=1),
#               seed=1:50)
# }

# test scenario
# nsamp = 2
# addScenario(dsc_gtex,name=paste0("spiky,nsamp=",nsamp),
#             fn=datamaker,
#             args=list(ngene=10000, nsamp=nsamp, pi0="random",
#                       betaargs=list(betapi=c(.4,.2,.2,.2),betamu=c(0,0,0,0),betasd=c(.25,.5,1,2)),
#                       breaksample=FALSE, nctl=100, alpha=0),
#             seed=1)