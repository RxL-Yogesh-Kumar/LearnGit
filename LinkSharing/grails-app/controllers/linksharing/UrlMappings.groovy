package linksharing

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/"(controller: "User", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')

    }
}
