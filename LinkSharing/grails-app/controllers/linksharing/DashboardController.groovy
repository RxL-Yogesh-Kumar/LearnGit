package linksharing

class DashboardController {

    def topicService
    def subscriptionService
    def resourceService
    def dashboard() {

        User u =User.findByUserName(session.user.userName)

        int tcount= User.findByUserName(session.user.userName).topics.size()

        int scount=User.findByUserName(session.user.userName).subscriptions.size()


        List subList=subscriptionService.subscriptions(session.user.userName)
        List trendList=topicService.trendTopicsMethod()
        List inbResListMethod=resourceService.inbResListMethod(session.user.userName)

        render(view:"dashboard" ,model: [tcount:tcount,scount:scount,trendList:trendList,subList:subList,inbResList:inbResListMethod])

    }

    def viewpost(){
        User u = session.getAttribute("user")
        Resources r = Resources.findById(params.get("id"))
        render(view: "viewPost",model:[u:u,resource:r])
    }



}
