package linksharing

class DocumentResource  extends Resources{
    String filePath



    static constraints = {
        filePath blank: true
    }

    static mapping = {
        table 'DocRes'
    }
}