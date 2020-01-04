import java.util.Date;

public class MutableStudent {
    private long id;
    private String name;
    private Date createdDate;

    public MutableStudent(long id, String name) {
        this.id = id;
        this.name = name;
        this.createdDate = new Date();
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public static void main(String[] args) {
        MutableStudent student = new MutableStudent(1234567, "John");
        Date createdDate = student.getCreatedDate();
        createdDate.setTime(200000);
    }
}

