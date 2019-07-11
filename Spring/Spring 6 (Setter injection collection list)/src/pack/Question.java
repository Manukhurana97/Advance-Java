package pack;

import java.util.Iterator;
import java.util.List;

public class Question
{

    private int id;
    private String Ques;
    private List<Answer> answers;

//    id Setter and Getter
    public void setId(int Id)
    {
        this.id=Id;
    }

    public int getId()
    {
        return id;
    }

// Ques setter and getter
    public void setQues(String ques)
    {
        this.Ques=ques;
    }

    public String getQues()
    {
        return getQues();
    }

//  Answer class setter and Getter
    public List<Answer> getAnswers()
    {
        return answers;
    }

    public void setAnswers(List<Answer> answers)
    {
        this.answers = answers;
    }

    //    Display
    void show(){
        System.out.println(id+". "+Ques);
        Iterator itr = answers.iterator();
        while(itr.hasNext())
        {
            System.out.println("->"+itr.next());
        }


    }


}
