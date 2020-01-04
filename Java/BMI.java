public class BMI {
    private String name;
    private double height;
    private double weight;

    //Default Constructer
    public BMI(){}

    //Constructor
    public BMI(double height, double weight){
        this.name = name;
        this.height = height;
        this.weight = weight;
    }

    //Getters
    public String getName() {
        return name;
    }

    public double getHeight() {
        return height;
    }

    public double getWeight() {
        return weight;
    }

    //Setters
    public void setName(String name) {
        this.name = name;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }


    //Methods
    public double ComputeBMI(){
        return weight/ (height * height);
    }

}

