package pack4;

public class Employee {

    private int id;
    private String name;
    private Address add;



    public Employee(){}

    public Employee(int id,String name)
    {
        this.id=id;
        this.name=name;
    }

    public Employee(int id, String name, Address add) {
        this.id = id;
        this.name = name;
        this.add = add;
    }

    void show(){
        System.out.println(id+" "+name);
        System.out.println(add);
    }
}
