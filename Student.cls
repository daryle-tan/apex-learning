public class Student {
    public String name {get; private set;};
    private Integer grade;
    private Integer age;

    private Student(String name, Integer grade) {
        this.name = name;
        this.grade = grade;
    }

    public void printDetails() {
        System.debug('Name: ' + this.name + 'Grade: ' + this.grade);
    }

    public void demoPassThis(List<Student> studentList) {
        studentList.add(this);
        StudentUtils.printStudentList(studentList);
    }

    public Integer getStudentAge() {
        return this.age;
    }

    public void setStudentAge(Integer age) {
        this.age = age;
    }
}