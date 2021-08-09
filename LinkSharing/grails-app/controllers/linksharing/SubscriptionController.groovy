package linksharing

import linksharing.Enums.Seriousness

class SubscriptionController {

    def subscribe(params) {
        User user=User.findByUserName(session.user.userName)
        Topic t=Topic.get(params.id)
        Subscription s=new Subscription(seriousness: Seriousness.CASUAL,topic: t)
        t.addToSubscribers(s)
        user.addToSubscriptions(s)
        s.save(flush:true,failOnError:true)
        user.save(flush:true,failOnError:true)

        redirect(controller:"dashboard",action:"dashboard")
    }


    def unsubsTrend(params)
    {
        println params

        User user=User.findByUserName(session.user.userName)

        Long topicid=Long.parseLong((params.id))

        Subscription sub =Subscription.createCriteria().get{
            eq('topic.id',topicid)
            eq('user.id',user.id)
        }

        Subscription s=Subscription.findById(sub.id)
        s.delete(flush:true)

        redirect(controller: "dashboard",action:"dashboard")

    }
    def unsubscribe()
    {
        Subscription sub=Subscription.findById(params.id)
        sub.delete(flush:true)
        redirect(controller: "dashboard",action:"dashboard")
    }
}


