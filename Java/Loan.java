import java.util.Date;
import java.lang.Math;

public class Loan {
    //Fields
    private double loanAmount;
    private double annualInterestRate;
    private int numberOfYears;
    private Date loanDate;

    //Default Constructor
    public Loan(){
        this(40000, 10.0, 15);
    }

    //Constructor
    public Loan(double loanAmount, double annualInterestRate, int numberOfYears){
        this.loanAmount = loanAmount;
        this.annualInterestRate = annualInterestRate;
        this.numberOfYears = numberOfYears;
        loanDate = new Date();
    }

    //Getters
    public double getAnnualInterestRate()
    {
        return annualInterestRate;
    }

    public int getNumberOfYears() {
        return numberOfYears;
    }

    public double getLoanAmount() {
        return loanAmount;
    }

    public Date getLoanDate() {
        return loanDate;
    }

    //Setters
    public void setAnnualInterestRate(double annualInterestRate) {
        this.annualInterestRate = annualInterestRate;
    }

    public void setNumberOfYears(int numberOfYears) {
        this.numberOfYears = numberOfYears;
    }

    public void setLoanAmount(double loanAmount) {
        this.loanAmount = loanAmount;
    }

    //Methods
    /** Find Monthly Payment */
    public double getMonthlyPayment(){
        double monthlyInterestRate = annualInterestRate / 1200;
        double monthlyPayment = loanAmount * monthlyInterestRate / (1 - (1/Math.pow(1 + monthlyInterestRate, numberOfYears * 12)));
        return monthlyPayment;
    }

    /** Find Total Payment */
    public double getTotalPayment(){
        double totalPayment = getMonthlyPayment() * numberOfYears * 12;
        return totalPayment;
    }

}
