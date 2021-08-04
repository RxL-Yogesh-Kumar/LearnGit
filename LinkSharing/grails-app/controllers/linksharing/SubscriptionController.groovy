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
}
