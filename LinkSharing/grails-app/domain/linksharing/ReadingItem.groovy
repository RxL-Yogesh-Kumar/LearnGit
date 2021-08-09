package linksharing

class ReadingItem {
    Resources resource
    User user
    boolean isRead

    static belongsTo = [resource:Resources,user:User]

    static constraints = {
        isRead blank: false
    }
}