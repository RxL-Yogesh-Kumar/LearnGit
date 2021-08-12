package linksharing

class ResourceController {
    def resourceService
    def readingService

    def createDoc()
    {
        String name= session.user.userName

        def docR=resourceService.createDoc(params,name,request)

        if(docR)
        {
            redirect(controller:"dashboard" , action:"dashboard")
            flash.message2="document attached successfully"
        }
        else
        {
            redirect(controller:"dashboard" , action:"dashboard")
            flash.error2="try again"
        }
    }

    def createLink()
    {

        String name= session.user.userName

        def linkres=resourceService.createLink(params,name)

        if(linkres)
        {
            redirect(controller:"dashboard" , action:"dashboard")
            flash.message3="link attached successfully"
        }
        else
        {
            redirect(controller:"dashboard" , action:"dashboard")
            flash.error2="try again"
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
    def markRead()
    {
        String name=session.user.userName
        readingService.markAsReadMethod(params,name)
        redirect(controller: "dashboard",action: "dashboard")
    }

    def deleteRes()
    {
        Resources rsc = Resources.findById(params.id)
        rsc.delete(flush:true)
        redirect(controller: "dashboard",action: "dashboard")
    }
}
