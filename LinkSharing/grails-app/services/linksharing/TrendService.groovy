package linksharing

import grails.gorm.transactions.Transactional

@Transactional
class TrendService {

    def serviceMethod() {

    }

    List<Resources> topPost(){
        Map<Integer,Integer> mp =[:]
        Resources.list().each {
            if(ResourceRating.findByResource(it)) {
                Integer l = ResourceRating.createCriteria().get {
                    projections {
                        avg("score");
                    }
                    like("resource", it)
                }
                mp[it.id] = l
            }
        }
        mp = mp.sort {it.value}
        println mp
        List<Resources> m = []
        Set<Integer> s = mp.keySet()
        for(int i=0;i<s.size();i++)
        {
            m.add(Resources.findById(s[i]))
        }
        /*m = m.reverse()*/
        if(m.size()>5)
        {
            m=m.subList(0,5)
        }
        m.each {println it}
        return m
    }
}
