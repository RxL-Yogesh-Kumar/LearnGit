package linksharing

class SendMailController {

    def send() {
        println params
        sendMail {
            to "${params.email}"
            subject "hello"
            text "you are invited"

        }

        flash.message = "Message sent at "+new Date()
        redirect(controller: 'dashboard',action: 'dashboard')
    }
}
