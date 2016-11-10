<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" 
href="${pageContext.request.contextPath}/resources/css/main.css">
<title>simpleBank</title>
</head>
<body>
<div class="main">
<a href="${pageContext.request.contextPath}">main1</a>
<hr>
<script src="//pastebin.com/embed_js/tgDPiYq8"></script>
<div>package bank;

import java.util.Scanner;

public class BankingApplication {

	public static void main(String[] args) {
		BankAccount ba = new BankAccount("Ardasan", "22");
		ba.showMenu();
	}

}

class BankAccount {
	int balance;
	int previousTransaction;
	String customerName;
	String customerId;

	public BankAccount(String customerName, String customerId) {
		this.customerName = customerName;
		this.customerId = customerId;
	}

	void deposit(int amount) {
		if (amount != 0) {
			balance = balance + amount;
			previousTransaction = amount;
		}
	}

	void withdraw(int amount) {
		if (amount != 0) {
			balance = balance - amount;
			previousTransaction = -amount;
		}
	}

	void getPreviousTransaction() {
		if (previousTransaction > 0) {
			System.out.println("Deposited: " + previousTransaction);
		} else if (previousTransaction < 0) {
			System.out.println("Withdrawn: " + Math.abs(previousTransaction));
		} else {
			System.out.println("No transaction occured");
		}
	}

	void showMenu() {
		char option = '\0';
		Scanner scanner = new Scanner(System.in);
		System.out.println("Welcome " + customerName);
		System.out.println("Your Id is: " + customerId);
		System.out.println("\n");
		System.out.println("A. Check Balance");
		System.out.println("B. Deposit");
		System.out.println("C. Withdraw");
		System.out.println("D.Previous transaction");
		System.out.println("E. Exit");

		do {
			System.out.println("=====================================");
			System.out.println("Enter an option");
			System.out.println("=====================================");
			option = scanner.next().charAt(0);
			System.out.println("\n");

			switch (option) {
			case 'A':
				System.out.println("-------------------------------------");
				System.out.println("Balance = " + balance);
				System.out.println("-------------------------------------");
				System.out.println("\n");
				break;
			case 'B':
				System.out.println("-------------------------------------");
				System.out.println("Enter an amount to deposit");
				System.out.println("-------------------------------------");
				int amount = scanner.nextInt();
				deposit(amount);
				System.out.println("\n");
				break;
			case 'C':
				System.out.println("-------------------------------------");
				System.out.println("Enter amount to withdraw");
				System.out.println("-------------------------------------");
				int amount2 = scanner.nextInt();
				withdraw(amount2);
				System.out.println("\n");
				break;
			case 'D':
				System.out.println("-------------------------------------");
				getPreviousTransaction();
				System.out.println("-------------------------------------");
				System.out.println("\n");
				break;
			case 'E':
				System.out.println("*************************************");
				break;
			default:
				System.out.println(
						option + " is an Invalid Option!! Please enter again");
				break;
			}
		} while (option != 'E');
		System.out.println("Thank You for using our service");
	}
}
</div>
</div>
 </body>
</html>