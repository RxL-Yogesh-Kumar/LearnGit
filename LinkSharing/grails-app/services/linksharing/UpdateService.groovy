package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class UpdateService {


    def updateProfile(params,String uName)
    {
        User u=User.findByUserName(uName)

        u.userName=params.userName
        u.firstName=params.firstName
        u.lastName=params.lastName

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
        u.password=params.newPassword
        try {
            u.save(failOnError:true,flush:true)
            return u

        }catch(Exception e){
            println e
            return null
        }
    }
}
