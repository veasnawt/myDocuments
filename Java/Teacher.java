
public class Teacher {
	
	//Required
		String name;
		String major;
		
	//Optional
		String gender;
		int age;
		
	//construct for required
		Teacher(String name, String major){
			this.name = name;
			this.major = major;
		}
	//construct for optional
		Teacher(String name, String major, String gender, int age){
			this.name = name;
			this.major = major;
			this.gender = gender;
			this.age = age;
		}
	//Methods
		public void setValues(String name, String major, String gender, int age) {
			this.name = name;
			this.major = major;
			this.gender = gender;
			this.age = age;
		}
	//Display
		public void displayTeachers() {
			System.out.println("Teacher name: " + this.name);
			System.out.println("Teacher major: " + this.major);
			System.out.println("Teacher gender: " + this.gender);
			System.out.println("Teacher age: " + this.age);
		}
}
