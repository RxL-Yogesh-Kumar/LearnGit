package linksharing

import grails.gorm.transactions.Transactional
import linksharing.Enums.Visibility
import org.springframework.web.multipart.MultipartFile

@Transactional
class ResourceService {

    def createLink(params,String name)
    {
        println params
        User u=User.findByUserName(name)
        def topic=Topic.findByTopicName(params.topicName)
        println u.userName
        println topic.topicName
        LinkResource linkres=new LinkResource(params)

        u.addToResources(linkres)
        topic.addToResources(linkres)

        try{

            linkres.save(flush:true,failOnError:true)
            return linkres
        }catch(Exception e){
            return null
        }

    }

    def createDoc(Map params,String name,request)
    {
        User u =User.findByUserName(name)
        Topic topic=Topic.findByTopicName(params.topicName)

        MultipartFile document=request.getFile("document")
        String fileName = document.getOriginalFilename()
        String path="/home/yogesh/IdeaProjects/LinkSharing/grails-app/assets/documents"+fileName
        File doc=new File(path)
        document.transferTo(doc)

        DocumentResource dr=new DocumentResource(params)
        dr.filePath=path

        u.addToResources(dr)
        topic.addToResources(dr)

        try{
            dr.save(flush:true,failOnError:true)
            return dr
        }catch(Exception e){
            return null
        }
    }


    def inbResListMethod(String name)
    {
        User u=User.findByUserName(name)
        println u
        List<Resources> rsc=Resources.list()
        return rsc
    }

    def resList(tid)
    {
        List<Resources> rsc=Resources.createCriteria().list{
            eq("topic.id",tid)
        }
        return rsc
    }

    def recentResource()
    {
        List<Resources>resList=Resources.createCriteria().list{
            'topic'{
                eq("visibility", Visibility.PUBLIC)
            }
        }

        Integer s=resList.size()
        resList.sort{
            x,y->y.dateCreated<=>x.dateCreated
        }

        if(s>2){
            Integer t=s-2
            return resList.dropRight(t)
        }
        else{
            return resList
        }
    }
}
