package pack3;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

public class Question {
    private int id;
    private String name;
    private Map<user, Answer> answer;

    public Question(int id,String name,Map<user, Answer> answer){
        this.id=id;
        this.name=name;
        this.answer=answer;

    }

    public void display(){

        System.out.println(id+" "+name);

        Set<Entry<user, Answer>> set=answer.entrySet();
        Iterator <Entry<user,Answer>> itr = set.iterator();

        while(itr.hasNext())
        {
            Entry<user,Answer> entry = itr.next();
            Answer ans = entry.getValue();
            user u = entry.getKey();
            System.out.print(ans +" ->");
            System.out.println(u);
        }

    }
}
