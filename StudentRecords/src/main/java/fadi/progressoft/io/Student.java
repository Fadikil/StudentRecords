package fadi.progressoft.io;

public class Student {
    private int id;
    private String name;
    private String email;
    private String course;

    public Student() {
    }

    public Student(String course, String email, int id, String name) {
        this.course = course;
        this.email = email;
        this.id = id;
        this.name = name;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String names) {
        this.name = names;
    }
}


