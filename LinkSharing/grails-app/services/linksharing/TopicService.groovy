package linksharing

import grails.gorm.transactions.Transactional
import linksharing.Enums.Seriousness
import linksharing.Enums.Visibility

@Transactional
class TopicService {





    def createTopicMethod(Map params,String username)
    {
        User user=User.findByUserName(username)
        Topic topic=new Topic(params)
        user.addToTopics(topic)

        try
        {
            topic.save(failOnError:true,flush:true)
            user.save(flush:true)
            Subscription subscription=new Subscription(seriousness: Seriousness.VERY_SERIOUS)
            user.addToSubscriptions(subscription)
            topic.addToSubscribers(subscription)

            try{
                subscription.save(flush:true,failOnError:true)
            }
            catch(Exception e){
                return null
            }
            return topic

        } catch(Exception e)
        {
            println e
            return null
        }
    }



    def trendTopicsMethod(){
        List<Topic> trendList=Topic.createCriteria().list(max:5){
            eq('visibility', Visibility.PUBLIC)
        }
        return trendList
    }

    def tlistMethod() {
        List topicl= Topic.list()
        return topicl
    }

}
