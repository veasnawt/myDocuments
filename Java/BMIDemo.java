public class BMIDemo {
    public static void main(String[] args) {
        double result;
        String tResult;

        BMI bmi = new BMI();
        bmi.setName("Veasna WT");
        bmi.setHeight(1.69);
        bmi.setWeight(45);
        result = bmi.ComputeBMI();
        if(result < 18.5){
            tResult = "Underweight";
        }else if(result >= 18.5 && result < 25){
            tResult = "Normal Weight";
        }else if(result >= 25 && result < 30){
            tResult = "Overweight";
        }else{
            tResult = "Obesity";
        }

        System.out.println("Name: " + bmi.getName());
        System.out.println("Result: " + result);
        System.out.println(bmi.getName() + " is " + tResult + ".");
    }
}
