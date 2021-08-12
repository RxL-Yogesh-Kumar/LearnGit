package linksharing

class Resources {
    String description
    User createdBy
    Topic topic
    Date dateCreated
    Date lastUpdated

    static belongsTo = [createdBy:User,topic:Topic]
    static  hasMany = [resourceRated: ResourceRating]

    static constraints = {
    }
}