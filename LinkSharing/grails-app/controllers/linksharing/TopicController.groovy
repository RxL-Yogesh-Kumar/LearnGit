package linksharing

class TopicController {

    def topicService
    def subscriptionService
    def resourceService
    def index() { }

    def addTopic()
    {
        Topic t=Topic.findByTopicName(params.topicName)
        if(t){
            flash.messagetopic="topic already exist"
            redirect (controller:'dashboard',action:'dashboard')
        }

        else{
            String username = session.user.userName
            def v = topicService.createTopicMethod(params,username)
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

    def topicShow()
    {
        Long topicId
        Long id=Long.parseLong(params.id)
        Subscription sub=Subscription.get(id)
        if(sub){
            Topic t=sub.topic
            topicId=t.id
        }
        else
        {
            topicId=id
        }

        Topic topic=Topic.findById(topicId)
        Integer subCount=topic.subscribers.size()
        Integer postCount=topic.resources.size()
        List resList=resourceService.resList(topicId)
        List sublist=subscriptionService.topicSubscriptions(topicId)

        render(view:"topicShow",model: [topic:topic,sub:sub,subCount:subCount,postCount:postCount,subList:sublist,resList:resList])
    }

}
