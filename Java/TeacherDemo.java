
public class TeacherDemo {
	public static void main(String[] args) {
		Teacher teacher = new Teacher("Hieng Mao", "OOP");
		teacher.displayTeachers();
		System.out.println();
		
		teacher = new Teacher("Khem Puthea", "Web Design", "Male", 18);
		teacher.displayTeachers();
	} 
}

