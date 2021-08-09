package linksharing

class ResourceController {
    def resourceService


    def createDoc()
    {
        String name= session.user.userName

        def docR=resourceService.createDoc(params,name,request)

        if(docR)
        {
            redirect(controller:"dashboard" , action:"dashboard")
        }
        else
        {
            redirect(controller:"dashboard" , action:"dashboard")
        }
    }

    def createLink()
    {

        String name= session.user.userName

        def linkres=resourceService.createLink(params,name)

        if(linkres)
        {
            redirect(controller:"dashboard" , action:"dashboard")
        }
        else
        {
            redirect(controller:"dashboard" , action:"dashboard")
        }
    }


    def saveFile()
    {
        DocumentResource doc= DocumentResource.get(params.id)
        def file=new File("${doc.filePath}")
        if(file.exists())
        {
            response.setContentType("application/octet-stream")
            response.setHeader("Content-disposition","attachment;filename=\"${file.name}\"")
            response.outputStream<<file.bytes
        }
        else{
            render "error"
        }
    }
}
