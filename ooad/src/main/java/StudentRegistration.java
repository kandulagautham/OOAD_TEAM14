
public class StudentRegistration implements Student {
    private String name;
    private String gender;
    private String email;
    private String contact;
    private String city;
    private String address;
    private String dob;
    private String age;
    private String sscPercentage;
    private String hscPercentage;
    private String degreeAggregate;
    private String stream;
    private String username;
    private String password;

    public StudentRegistration(String name, String gender, String email, String contact, String city, String address, String dob, String age, String sscPercentage, String hscPercentage, String degreeAggregate, String stream, String username, String password) {
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.contact = contact;
        this.city = city;
        this.address = address;
        this.dob = dob;
        this.age = age;
        this.sscPercentage = sscPercentage;
        this.hscPercentage = hscPercentage;
        this.degreeAggregate = degreeAggregate;
        this.stream = stream;
        this.username = username;
        this.password = password;
    }

    public Student clone() {
        try {
            return (Student) super.clone();
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }
}
