package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class LoginService {


    def loginUser(params){
        def u = User.findByEmail(params.email);

        if(u!=null && (u.email== params.email))
        {
            return u
        }

        else{
            return null
        }

//        User useremail = User.findByEmailAndPasswordLike("${params.email}","${params.password}")
        /*if(useremail!=null)
        {
            HttpSession session=request.getSession()
            session.setAttribute("firstname",useremail.firstName)
            String encoded = Base64.getEncoder().encodeToString(useremail.photo)
            session.setAttribute("photo",encoded)
            render(view: "dashboard/dashboard")
        }

        else
        {
            flash.error = "invalid username/password please try again!!"
            redirect(action: "user/login")
        }*/
    }
}
