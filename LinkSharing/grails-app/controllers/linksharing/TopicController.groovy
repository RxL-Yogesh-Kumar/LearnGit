package linksharing

class TopicController {

    def topicService
    def index() { }

    def addTopic()
    {
        println params
        Topic t=Topic.findByTopicName(params.topicName)
        if(t){
            flash.messagetopic="topic already exist"
            redirect (controller:'dashboard',action:'dashboard')
        }

        else{
            String username = session.user.userName
            def v = topicService.createTopicMethod(params,username)
            println v
                 if(v){
                     redirect(controller: 'dashboard',action: 'dashboard')
                     flash.success="Topic created"
                    }
            else{
                     flash.error="Topic not created"
                     render ("not created")
                 }

        }
    }


    def toplist(){
        List<Topic> list=topicService.tlistMethod()
        render(view:"topiclist",model:[topicl:list])
    }


    /*def trending(){
        List<Topic> trendList=topicService.trendTopicsMethod()
        render(view:"dashboard",model:[trendList:trendList])
    }*/

}
