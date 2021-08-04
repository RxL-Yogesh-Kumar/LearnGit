package linksharing

class ResourceRating {
//    resource
//    user
    static belongsTo = [resource:Resources,user:User]
    int score

    static constraints = {
        score blank: false
    }


}