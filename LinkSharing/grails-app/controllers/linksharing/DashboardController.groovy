package linksharing

class DashboardController {

    def topicService
    def subscriptionService
    def resourceService
    def index()
    {

    }
    def dashboard() {

       /* if(!session.user)
        {
            flash.msg="Login First for full access"
            redirect(controller:"user",action:"index")
        }*/

            User u =User.findByUserName(session.user.userName)

            int tcount= User.findByUserName(session.user.userName).topics.size()

            int scount=User.findByUserName(session.user.userName).subscriptions.size()


            List subList=subscriptionService.subscriptions(session.user.userName)
            List trendList=topicService.trendTopicsMethod()
            List inbResListMethod=resourceService.inbResListMethod(session.user.userName)
            List unread=resourceService.inboxListMethod(session.user.userName)

            render(view:"dashboard" ,model: [tcount:tcount,scount:scount,trendList:trendList,subList:subList,inbResList:inbResListMethod,unread:unread])




    }

    def viewpost(){
        List trendList=topicService.trendTopicsMethod()

        if(!session.user)
        {
            flash.msg="Login First"
            redirect(controller:"user",action:"index")
        }
        else
        {
            User u = session.getAttribute("user")
            Resources r = Resources.findById(params.get("id"))
            render(view: "viewPost",model:[u:u,resource:r,trendList: trendList])
        }

    }



}
