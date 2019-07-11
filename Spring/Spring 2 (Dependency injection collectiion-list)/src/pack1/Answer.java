package pack1;

public class Answer {
    private int id;
    private String name ;
    private String by;

    private  Answer(int id, String name,String by){
        this.by=by;
        this.id=id;
        this.name=name;
    }



    public String toString(){
        return id+" "+name+" "+by;
    }
}
