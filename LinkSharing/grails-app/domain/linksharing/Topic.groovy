package linksharing
import linksharing.Enums.Visibility


class Topic {
    String topicName
    Date dateCreated
    Date lastUpdated
    User createdBy
    Visibility visibility

    static belongsTo = [createdBy:User]
    static hasMany = [resources:Resources,subscribers:Subscription]

    static constraints = {
        topicName blank: false
    }
}