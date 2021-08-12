package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class UpdateService {


    def updateProfile(params,String uName,request)
    {
        User u=User.findByUserName(uName)


        u.userName=params.userName
        u.firstName=params.firstName
        u.lastName=params.lastName

        def file = request.getFile('image')
        if (file && !file.empty) {
            File photo = new File("/home/yogesh/IdeaProjects/LinkSharing/grails-app/assets/images/profile/${params.userName}.png")
            file.transferTo(photo)
            u.photo = "/profile/${params.userName}.png"
        }

        try{
            u.save(failOnError:true,flush:true)
            return u
        }catch(Exception e)
        {
            return null
        }
    }

    def updatePassword(params,String uName)
    {

        User u = User.findByUserName(uName)
        u.password=params.password
        u.confPassword=params.confPassword
        try {
            u.save(failOnError:true,flush:true)
            return u

        }catch(Exception e){
            println e
            return null
        }
    }
}
