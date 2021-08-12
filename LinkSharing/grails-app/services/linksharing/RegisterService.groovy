package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class RegisterService {

    def serviceMethod() {

    }

    def registerUser(params,request){


            User u1 = new User(params)
            u1.active=true

            def file = request.getFile('image')
            if (file && !file.empty) {
                File photo = new File("/home/yogesh/IdeaProjects/LinkSharing/grails-app/assets/images/profile/${params.userName}.png")
                file.transferTo(photo)
                u1.photo = "/profile/${params.userName}.png"
            }

                else{
                u1.photo= "/profile/defimage.png"
            }


            try{
                u1.save(flush:true,failOnError:true)
                if(u1.id==1)
                {
                    u1.admin=true
                    u1.save(flush:true,failOnError:true)
                }

                return u1
            } catch(Exception e){
                return null

            }

        }

    }

