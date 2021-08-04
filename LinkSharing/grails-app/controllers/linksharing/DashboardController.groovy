package linksharing

class DashboardController {

    def topicService

    def dashboard() {

        User u =User.findByUserName(session.user.userName)

        int tcount= User.findByUserName(session.user.userName).topics.size()
        println tcount


        int scount=User.findByUserName(session.user.userName).subscriptions.size()
        println scount


        List trendList=topicService.trendTopicsMethod()

        render(view:"dashboard" ,model: [tcount:tcount,scount:scount,trendList:trendList])

        println trendList
    }







}
