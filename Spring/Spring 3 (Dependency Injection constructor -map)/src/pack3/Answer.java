package pack3;

import java.util.Date;

public class Answer {
    private int id;
    private String by;
    private Date posteddate;

    public Answer(int id,String by,Date posteddate){
        this.id=id;

        this.by=by;
        this.posteddate=posteddate;
    }

    public String toString(){
        return id+" "+by+" "+posteddate;
    }
}
