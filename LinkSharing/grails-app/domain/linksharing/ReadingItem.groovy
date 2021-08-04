package linksharing

class ReadingItem {
//    resource
//    user
    boolean isRead

    static belongsTo = [resource:Resources,user:User]

    static constraints = {
        isRead blank: false
    }
}