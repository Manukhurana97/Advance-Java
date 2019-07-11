package pack;

public class Employee {

    private int id;
    private String name;
    private Address add;

    public Employee(int id) {
        this.id = id;
    }



    public Employee(String name) {
        this.name = name;
    }

    public Employee(Address add) {
        this.add = add;
    }

    public Employee(int id, String name, Address add) {
        this.id = id;
        this.name = name;
        this.add = add;
    }

    public void show(){
        System.out.println(id+" \n"+name);
        System.out.println(add.show());
    }
}
