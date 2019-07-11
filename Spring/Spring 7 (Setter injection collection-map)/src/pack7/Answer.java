package pack7;

import java.util.Date;

public class Answer {
    private int id;
    private String ans;
    private Date datetime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    @Override
    public String toString() {
        return "\nAnswer{" +
                "id=" + id +
                ", ans='" + ans + '\'' +
                ", datetime=" + datetime +
                '}';

    }
}
