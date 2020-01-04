import java.util.Scanner;

public class Method {
	public static void main(String[] args) {
		
		
		HoriPal(7);
		VertiPal(8);
		HoriVertiPal(5);
		HoriVertiSpacePal(4);
	}


	public static void HoriPal(int value) {
		System.out.println("Horizontal");

		int start = value;
		final int total = value*2;
		
		for(int i = 1; i < total; i++) {
			if(i < value) {
				System.out.print(start--);
			}else {
				System.out.print(start++);
			}
		}
		System.out.println("\n");
	}
	
	
	public static void VertiPal(int value){
		System.out.println("Vertical");
		int start = value;
		final int total = value*2;
		
		for(int i = 1; i < total; i++) {
			if(i < value) {
				start = i;
				System.out.println(start);
			}else {
				start = total - i;
				System.out.println(start);
			}
		}
		System.out.println();
	}

	public static void HoriVertiPal(int value){
		System.out.println("Horizontal-Vertical");
		int start = value;
		final int total = value*2;

		for(int i = 1; i < total; i++) {
			if(i < value) {
				start = i;
			}else {
				start = total - i;
			}
			
			int subTotal = 2 * start;
			int s = start;
			
			for(int j = 1; j < subTotal; j++) {
				if(j < start) {
					System.out.print(s--);
				}else {
					System.out.print(s++);
				}
			}
			System.out.println();
		}
		System.out.println();
	}

	public static void HoriVertiSpacePal(int value){
		System.out.println("Horizontal-Vertical-Space");
		int start = value;
		final int total = value*2;

		for(int i = 1; i < total; i++) {
			if(i < value) {
				start = i;
			}else {
				start = total - i;
			}
			int numSpace = value - start;
			for(int k = 1; k <= numSpace; k++) {
				System.out.print(" ");
			}
			
			int subTotal = 2 * start;
			int s = start;
			
			for(int j = 1; j < subTotal; j++) {
				if(j < start) {
					System.out.print(s--);
				}else {
					System.out.print(s++);
				}
			}
			System.out.println();
		}
	}
	
}

