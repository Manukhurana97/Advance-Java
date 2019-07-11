package pack7;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Question {

    private int id;
    private String name;
    private String ques;
    Map<user,Answer> ans;

    public Map<user, Answer> getAns() {
        return ans;
    }

    public void setAns(Map<user, Answer> ans) {
        this.ans = ans;
    }

    //  id Setter and Getter
    public void setId(int id){this.id=id;}
    public int getId(){return id;}


//   name Setter and Getter
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


//    Ques Setter and getter
    public void setQues(String ques){
        this.ques=ques;
    }
    public String getQues(){
        return ques;
    }

    public void displayQues(){
        System.out.println(id+". "+name+"->"+ques);
        System.out.println();

        Set<Map.Entry<user,Answer>> set = ans.entrySet();
        Iterator<Map.Entry<user, Answer>> itr = set.iterator();

        while(itr.hasNext()){
            Map.Entry<user,Answer> entry = itr.next();

            user u= entry.getKey();
            Answer ans = entry.getValue();

            System.out.println(u+" "+ans);
            System.out.println();
        }

    }


}
