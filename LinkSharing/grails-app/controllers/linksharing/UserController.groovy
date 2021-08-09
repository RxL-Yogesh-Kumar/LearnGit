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
                flash.error="failed"
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
}


