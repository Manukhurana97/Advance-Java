package pack4;

public class Address {
    private String city,state,country;

    public Address(String city, String state, String country) {
        this.city = city;
        this.state = state;
        this.country = country;
    }

    public String toString(){
        return  city+" "+ state+" "+country;
    }
}
