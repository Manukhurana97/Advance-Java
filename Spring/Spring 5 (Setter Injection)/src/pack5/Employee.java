package pack5;

public class Employee {

    private int id;
    private String name;
    private Address add;

    public Address getAdd() {
        return add;
    }

    public void setAdd(Address add) {
        this.add = add;
    }

    public void setId(int id){
        this.id=id;
    }

    public int getId(){
        return id;
    }


    public void setName(String name) {
        this.name = name;
    }


    public String getName(){
        return name;
    }





    public void display(){
        System.out.println(id+" "+name);
        System.out.println(add.toString());
    }


}
