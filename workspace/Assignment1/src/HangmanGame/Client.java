package HangmanGame;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

import java.util.Scanner;

public class Client {
	static BufferedReader in=null;
	static PrintWriter out=null;
	static Scanner scan=new Scanner(System.in);

	public static void main(String args[])
	{

		///connect to server socket
		Socket socket=null;
		try {
			socket = new Socket("localhost", 3005);
			System.out.println("Client has connected to server");
			
		} catch (UnknownHostException e2) {
			System.out.println("cant find host");
		} catch (IOException e2) {
			e2.printStackTrace();
	}
	
	
	
	try {
		out = new PrintWriter(socket.getOutputStream(), true);
		in = new BufferedReader(new 
			InputStreamReader(socket.getInputStream()));
	} catch (IOException e1) {
		e1.printStackTrace();
	}
	
	out.println("Client: Hello Server"); ///working
	System.out.println("Client: hello Server");
	
	String inputLine=""; //input from server
	try {
		//read game instructions from the server
		inputLine=in.readLine();
		System.out.println(inputLine);
		inputLine=in.readLine();
		System.out.println(inputLine);
		inputLine=in.readLine();
		System.out.println(inputLine);
		inputLine=in.readLine();
		System.out.println(inputLine);
		
		
	} catch (IOException e1) {
		e1.printStackTrace();
	}
	 do//while the user is still connected remain in this loop
	 {
		giveInput();//after instructions client must give a guess 
		try {
			inputLine=in.readLine();
			System.out.println(inputLine);
			
		} catch (IOException e1) {
			e1.printStackTrace();
		}

	 }while (!inputLine.equals("Goodbye"));//server returns bye when client wants to quit
	 
	///finally close all connnections
	try {
		out.close();
		in.close();
		socket.close();

	} catch (IOException e) {
		e.printStackTrace();
	}
	
	
	}//end main
	
	static void giveInput()///used to get user guesses to server
	{
		String letter=scan.nextLine();
		out.println(letter);
	}
}
	


