package linksharing

class SendMailController {

    def send() {
        User user = User.findByEmail(params.email)
        if(user) {
            Topic topic = Topic.findByTopicName(params.topicName)
            Long topicId = topic.id
            String link = "http://localhost:7979" + createLink(controller: "subscription", action: "sendSubscriptionInvite", params: [id: topicId, email: user.email])

            sendMail {
                to "${params.email}"
                subject "Hello ${user.firstName},You have been invited to join the Topic ${topic.topicName}"
                text link
            }
            flash.message = "Message sent at " + new Date()
            redirect(controller: "dashboard", action: "dashboard")
        }
        else {
            flash.error="No Such User Exist"
            redirect(controller: "dashboard",action: "dashboard")
        }
    }



}


