package pack1;

import java.util.Iterator;
import java.util.List;

public class Question {

    private int id;
    private String name;
    private List<Answer> answer;

    public Question(int id, String name,List<Answer> answer) {
        this.id = id;
        this.name = name;
        this.answer=answer;
    }

    public void display(){
        System.out.println(id+name);
        Iterator itr= answer.iterator();
        while (itr.hasNext()){
            System.out.println(itr.next());
        }
    }
}
