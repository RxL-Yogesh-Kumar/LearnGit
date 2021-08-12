package linksharing

class TopicController {

    def topicService
    def subscriptionService
    def resourceService
    def index() { }

    def addTopic()
    {
        Topic t=Topic.findByTopicName(params.topicName)
        User u = User.findByUserName(session.user.userName)
        def list=u.topics.asList()
        if(list.contains(t)){
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

    def deleteTopic()
    {
        Topic t=Topic.findById(params.id)
        println t
        t.delete(flush:true)
        redirect(controller: "dashboard",action: "dashboard")
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

        int tcount= User.findByUserName(session.user.userName).topics.size()

        int scount=User.findByUserName(session.user.userName).subscriptions.size()


        render(view:"topicShow",model: [topic:topic,sub:sub,subCount:subCount,postCount:postCount,subList:sublist,resList:resList])
    }

    def editTopic(){
        Topic topic = Topic.findById(params.id)
        println topic
        topic.topicName = params.topicName
        topic.save(flush:true,failOnError:true)
        redirect(controller: "dashboard",action: "dashboard")
    }

}
