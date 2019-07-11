package pack;

public class Answer {

    private int id;
    private String ans;


//  id Setter and getter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


//  ans Setter and getter
    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }


//    show methord
    public String toString(){
        return id +". "+ans;
    }

}
