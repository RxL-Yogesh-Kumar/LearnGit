package linksharing

class SearchController {
    def trendService
    def resourceService
    def topicService


    def index() { }

    def search(){

        String searchWord=params.word
        List topPost=trendService.topPost()
        List trendList=topicService.trendTopicsMethod()

        render(view: "search",model:[topPost:topPost,trendList:trendList,word:searchWord])
    }

}
