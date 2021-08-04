package linksharing

class LinkResource {
    String url

    static belongsTo = [resource: Resources]

    static constraints = {
        url blank: false
    }

    static mapping = {
        table 'LinkRes'
    }
}