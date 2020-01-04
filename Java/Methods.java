import java.util.Scanner;

public class Methods {
	
	private static Scanner input;

	public static void main(String[] args) {
		
		// 1.
		System.out.println("--- Calculate GCD using Method ---");
		input = new Scanner(System.in);
		System.out.print("Enter first value: ");
		int num1 = input.nextInt();
		System.out.print("Enter second value: ");
		int num2 = input.nextInt();
		
		calculateGCD(num1, num2);
		System.out.println();
		
		// 2.
		System.out.println("--- Calculate Factorial ---");
		int num = 4;
		int fact = num;
		for(int i = num-1; i >0; i--) {
			num *= i;
		}
		System.out.println("Factorial of " + fact + ": " + num);
		System.out.println();
		
		// 3.
		System.out.println("--- Calculate Factorial using Method ---");
		calculateFactorial(7);
		System.out.println();
		
		// 4.
		System.out.println("-- Calculate Factorial using Recursive Method ---");
		int n = 5;
		int res = factorial(n);
		System.out.println("Factorial of " + n + ": " + res);
	}
	
	static void calculateGCD(int num1, int num2) {
		int gcd = 1;
		int k = 2;
		while (k <= num1 && k <= num2) {
			if(num1 % k == 0 && num2 % k == 0) {
				gcd = k;
			}
			k++;
		}
		System.out.println("GCD for " + num1 + " and " + num2 + ": " + gcd);
	}
	
	static void calculateFactorial(int num) {
		int fact = num;
		for(int i = num-1; i >0; i--) {
			num *= i;
		}
		System.out.println("Factorial of " + fact + ": " + num);
	}
	
	static int factorial(int n) {
		if(n == 1) {
			return 1;
		}else if( n < 0){
			return 0;
		}else {
			return n * factorial(n-1);
		}
	}
	
}

