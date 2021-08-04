package linksharing
import linksharing.Enums.Seriousness

class Subscription {
    User user
    Seriousness seriousness
    Date dateCreated

    static belongsTo = [topic:Topic,user:User]

    static constraints = {
    }
}