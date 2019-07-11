package pack3;

public class user {

    private int id;
    private String name;
    private String email;

    public user(int id,String name,String email){
        this.id=id;
        this.name=name;
        this.email=email;
    }

    public String toString(){
        return id+name+email;
    }
}
