import java.util.Date;

public class LoanDemo {
    public static void main(String[] args) {
        double mPayment;
        double tPayment;
        Date lDate;

        //Loan 1
        Loan l = new Loan();
        mPayment = l.getMonthlyPayment();
        tPayment = l.getTotalPayment();
        lDate = l.getLoanDate();
        System.out.println("Monthly Payment: " + mPayment);
        System.out.println("Total: " + tPayment);
        System.out.println("Loan Date: " + lDate);

        //New Line
        System.out.println();

        //Loan 2
        Loan l2 = new Loan();
        l2.setLoanAmount(1000000);
        l2.setAnnualInterestRate(12);
        l2.setNumberOfYears(10);
        mPayment = l2.getMonthlyPayment();
        tPayment = l2.getTotalPayment();
        lDate = l2.getLoanDate();
        System.out.println("Monthly Payment: " + mPayment);
        System.out.println("Total: " + tPayment);
        System.out.println("Loan Date: " + lDate);
    }

}
