public class Student {
    public String name;
    public Integer grade;

    public Student(String name, Integer grade) {
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
}