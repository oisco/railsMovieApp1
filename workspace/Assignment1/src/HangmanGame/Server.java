package HangmanGame;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Random;


public class Server{

	public static void main (String args[])
	{
		ServerSocket server=null;
		PrintWriter out=null;
		BufferedReader in=null;
		Socket clientSocket=null;
		
		//create server socket and connect to client
		try {
			server= new ServerSocket(3005);
		 	System.out.println("Server: Waiting for client to connect.....");
		 	clientSocket = server.accept();		 	
			out = new PrintWriter(clientSocket.getOutputStream(), true);
			in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));

		} catch (IOException e) {
			e.printStackTrace();
		}


		//get client input
	try {
		String inputLine = in.readLine();
		System.out.println(inputLine);
	} catch (IOException e) {
		e.printStackTrace();
	}	
			String theWord=getNewWord();
			String theWordGuess;//if the user wishes to guess the word
			
			out.println("Server: You are now connected , you may begin to play the game....  ");
			out.println("You may now guess the first letter, you only have 5 guesses and if you would like to guess the word ");
			out.println("type the number 1 and you will then be asked your guess");
			out.println("Please enter the first letter you would like to guess....");			
			out.flush();	
			
			try {
				boolean wordWasGuessed=false;
				boolean keepPlaying=true;
				int numberOfGuesses=5;
				boolean guessedRight;
				
			do{
				String guess=in.readLine();
				if(guess.equals("1"))//if the user enters the number 1 he/she wants to guess the word
				{
						out.println("Please enter the word which you think the answer is");
						theWordGuess=in.readLine();
						if (theWordGuess.equals(theWord))
						{
							guessedRight=true;
							out.println("Congratulations, you have guessed correctly, the word is "+theWord+", would like like to play again? y/n");
							String answer=in.readLine();
							if (answer.equals("y"))
							{
							keepPlaying=true;
							theWord=getNewWord();
							numberOfGuesses=5;
							out.println("The number of guesses available and word has been reset, What is the next letter you would like to guess?");
							}else
							{
								out.println("Goodbye");
								break;
							}
						}
						else //user has not guessed the word correctly
						{
							numberOfGuesses--;
							out.println("The word is not "+theWordGuess+" you only have "+numberOfGuesses+" left, What is the next letter you would like to guess?");
						}
				}//end if (this if statement is only used when the user is guessing what the word is and not the letter)
				else{ //otherwise if the user is guessing a letter...
						char theguess;
						theguess=guess.charAt(0);
						guessedRight=false;
						
						//search the String and check if users guess is in the word
						for (int i=0;i<theWord.length();i++)
						{				if (theWord.charAt(i)==theguess){
								guessedRight=true;
								out.println("You have guessed correctly, the letter "+theguess+" is at position "+(i+1)+" , What is the next letter you would like to guess?");
								}
						}
						if (!guessedRight && numberOfGuesses==1){
							numberOfGuesses--;
							out.println("You have guessed "+guess+" ,this letter is not in the word and  have "+numberOfGuesses+" guesses left"+" ,you have one attempt to guess the word ,please enter your guess");
							String response=in.readLine();
							if(response.equalsIgnoreCase(theWord))
							{
								out.println("you have guessed correctly, the word is " +theWord+" would you like to play again?");
							}	else{
								out.println("you have guessed incorrectly and you lose, the word was " +theWord+" would you like to play again?");
							}
								response=in.readLine();
								
								if (response.equals("y"))
								{
									out.println("The number of guesses available and word has been reset, What is the next letter you would like to guess?");
									keepPlaying=true;
									theWord=getNewWord();
									numberOfGuesses=5;
								}
								else
								{
									out.println("Goodbye");
									break;
								}
							
						}		
						else if (!guessedRight){
								numberOfGuesses--;
								out.println("You have guessed "+guess+" ,this letter is not in the word you only have "+numberOfGuesses+" guesses left"+" , What is the next letter you would like to guess?");
								
						}
					}//end else
				}//end do
			while(keepPlaying);
				
			} catch (IOException e1) {
				e1.printStackTrace();
			}
				
	///finally close all connections
		try {
			out.close();
			in.close();
			clientSocket.close();
			server.close();
			System.out.println("Connection has ended");
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}//end main
	
	public static String getNewWord()///method to return a new word
	{
		final String[] words = {"lion", "tiger", "zebra", "rhino","snake"};
		Random random = new Random();
		int index = random.nextInt(words.length);
		return words[index];		 
	}
		
}

