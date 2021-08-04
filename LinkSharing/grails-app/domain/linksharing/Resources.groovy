package linksharing

class Resources {
    String description
//    created by user
//    topic
    Date dateCreated
    Date lastUpdated

    static belongsTo = [createdBy:User,topic:Topic]

    static constraints = {
    }
}