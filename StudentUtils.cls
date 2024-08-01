public class StudentUtils {
    public static void printStudentList(List<Student> students) {
        for(Student student : students) {
            student.printDetails();
        }
    }
}