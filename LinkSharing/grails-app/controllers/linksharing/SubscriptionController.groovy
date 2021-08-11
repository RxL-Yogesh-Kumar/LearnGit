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


    def changeVisibility(){
        Topic topic=Topic.get(params.id)
        topic.visibility=params.visibility
        try{
            topic.save(flush:true,failOnError:true)
        }catch(Exception e){

            flash.msg="error"
        }
        redirect(controller: "dashboard",action: "dashboard")
    }

    def changeSeriousness(){
        Subscription subscription=Subscription.get(params.id1)
        if(subscription)
        {
            subscription.seriousness=params.seriousness
            try{
                subscription.save(flush:true,failOnError:true)
            }catch(Exception e){
                flash.error="not changed"
            }
        }
        else{
            User user=User.findByUserName(session.user.userName)
            Topic topic=Topic.findById(params.id)

            Subscription sub=Subscription.findByUserAndTopic(user,topic)
            sub.seriousness=params.seriousness

            try{
                sub.save(flush:true,failOnError:true)
            }catch(Exception e){
                flash.error="not changed"

            }

        }
        redirect(controller:"dashboard",action: "dashboard")
    }

    def sendSubscriptionInvite(){
        Long topid=Long.parseLong(params.id)
        User user = User.findByEmail(params.email)
        Topic topic = Topic.get(topid)
        Subscription sub = Subscription.findByTopicAndUser(topic,user)
        if(session.user.userName != user.userName){
            flash.message="Login as ${user.firstName}" redirect(url:'/')
            session.invalidate()
        }else{
            if(sub==null){
                Subscription sub1 = new Subscription(seriousness: "CASUAL")
                topic.addToSubscribers(sub1)
                user.addToSubscriptions(sub1)
                topic.save(flush:true)
                user.save(flush:true,failOnError:true)
                sub1.save(flush:true,failOnError:true)
                flash.message2="Subscribed Successfully"
                redirect(controller:"dashboard",action: "dashboard")
            }else{
                flash.message2 ="You are already subscribed in this topic!"
                redirect(controller: "dashboard",action: "dashboard")
            }
        }
    }

}


