package linksharing

class User {
    String email
    String userName
    String password
    String confPassword
    String firstName
    String lastName
    String photo
    String securityQuestion
    boolean admin
    boolean  active
    Date dateCreated
    Date lastUpdated

    static hasMany = [topics:Topic,subscriptions:Subscription,resources:Resources,readingItems:ReadingItem,resourcerating:ResourceRating]
//    resourceRating check

    static constraints = {
        email(unique: true, email: true)
        userName(unique: true, blank: false)
        firstName blank: false
        password blank: false
        photo nullable: true,blank:true
    }

    static mapping = {
        table 'USR'
    }
}