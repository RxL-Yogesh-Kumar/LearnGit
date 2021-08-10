package linksharing
import javax.xml.bind.ValidationException
import javax.servlet.http.HttpSession
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class UserController {

    def loginService
    def registerService
    def updateService
    def topicService
    def resourceService
    def trendService



    def index()
    {
        Date date =new Date()
        List resList=resourceService.recentResource()
        List topPost=trendService.topPost()

        render (view: "index",model: [resList:resList,date:date,topPost:topPost])
    }


def forgotPassword(){
    User user=User.findByEmail(params.get("email"))
    println "mmmm"

    println params
    if(user.securityQuestion==(params.get("securityQuestion") as String))
    {
        user.password=params.get("password")
        user.confPassword=params.get("confPassword")

        user.save(flush:true,failOnError:true)
        redirect(controller:"user",action:"index")
    }
    else
    {
        render("abv")
    }


}

    def loginUser(){
        def u = loginService.loginUser(params)
        if(u!= null){
            if(u.password==params.password){
                session.setAttribute('user',u)
                redirect (controller:"dashboard",action: "dashboard")

            }
            else{
                flash.msg1="password incorrect"
                redirect (actionName: "index")
            }
        }
        else
        {
            flash.message="user not exist"

            redirect(actionName: "index")
        }



    }

    def registerUser(params,request){
        if(params.password != params.confPassword){
           flash.message="password not match"
            redirect(actionName:"index")
        }
        else
        {
            User u=registerService.registerUser(params,request)

            if(u)
            {
                flash.success="Registered Success"
            }

            else{
                flash.error="user already Exist"
            }

        }

        redirect(actionName:"index")
    }


    def admin(){
        def users=User.list()

        render (view: "admin",model: [user:users])
    }


    def logout(){

        redirect(controller: "user",actionName: "index")
    }

    def editProfile(){
        int tcount= User.findByUserName(session.user.userName).topics.size()
        int scount=User.findByUserName(session.user.userName).subscriptions.size()
        render(view: "profile", model: [tcount:tcount,scount:scount])
    }

    def updatePassword(){

            String name=session.user.userName
        println name
        println params
        /*if(params.newPassward != params.confirm)
        {
            flash.unmatch="password not equal confirm password"
            render(view: "profile")
        }
        else*/
      //  {
            def user=updateService.updatePassword(params,name)
            if(user)
            {
                render(view: "profile")
                flash.msg="password updated"
            }
            else{
                flash.error="not updated"
            }

       // }


    }

    def updateProfile()
    {
        String name=session.user.userName
        def u=updateService.updateProfile(params,name)
        if(u){
            session.setAttribute("user",u)
            render(view:"profile")
            flash.uprof="profile updated"
        }
        else{
            flash.error="not updated"
        }

    }

    def toplist(){
        List<Topic> list=topiclistService.tlistMethod()
        render(view:"topiclist",model:[topicl:list])
    }


    def activateUser(){
        User u = User.findByUserName(params.name)
        println params
        if(u.isActive()){
            flash.message="use already activate"
        }
        else{
            u.active=true
            u.save(flush:true,failOnError:true)
        }
        redirect(controller: "user",action: "admin")
    }


    def deactivateUser(){
        User user=User.findByUserName(params.name)
        if(user.isActive()){
            user.active=false
            user.save(flush:true,failOnError:true)

        }
        else{
            flash.message="use already deactivate"
        }
        redirect(controller: "user",action: "admin")
    }


    def makeAdmin(){

        User user =User.findByUserName(params.userName)
        user.admin=true;

        user.save(flush:true,failOnError:true)

        redirect(controller: "user",action: "admin")
    }

}



