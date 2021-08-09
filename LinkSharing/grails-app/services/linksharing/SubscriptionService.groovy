package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class SubscriptionService {

    def subscriptions(String name)
    {
        User user=User.findByUserName(name)
        List subList=Subscription.createCriteria().list(max:5) {
                    eq('user.id',user.id)
                }
        return subList
    }

    def topicSubscriptions(topicid)
    {
        List<Subscription>subList=Subscription.createCriteria().list{
            eq('topic.id',topicid)
        }
        return subList
    }

}
