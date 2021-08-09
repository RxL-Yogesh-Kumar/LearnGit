package linksharing

import grails.converters.JSON

class ResourceRatingController {

    def rate()
    {
        User u = session.getAttribute("user")
        User u1 = User.get(u.id)
        Resources r = Resources.findById(params.get("id"))
        int score = params.get("rating") as Integer
        println score
        if(ResourceRating.findByUserAndResource(u1,r))
        {
            ResourceRating rr = ResourceRating.findByUserAndResource(u1,r)
            rr.delete()
            ResourceRating rrnew = new ResourceRating(score: score,resource: r,user: u1)
            rrnew.save(flush:true)
        }
        else{
            ResourceRating rr = new ResourceRating(score: score,resource: r,user: u1)
            rr.save(flush:true)
        }
        render([m:"successfully rated"] as JSON)
    }
}
