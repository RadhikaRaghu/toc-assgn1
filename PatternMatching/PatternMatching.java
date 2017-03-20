/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package patternmatching;

import java.util.*;
/**
 *Code to see whether the given pattern exists in the given string or not
 * Step 1: To build a state transition table
 * Step 2: Parse the given string and see if it goes to final state using the state transition table
 * @author MRUDULA Y 1410110251
 */
public class PatternMatching {

    String pattern;   // the pattern to check
    String inputString; // the string that is inputted in which the above pattern has to be checked
    static int k =1; // k represents the state to which the NFA has to go to after seeing a particular input
    /**
     * Function to create Transition table
     * Here we calculate the state to which the NFA goes after seeing a particular input
     * @param P 
     * @param string
     * @return integer - if we have a k which is equal to the length of pattern passed at any point
     * while traversing the (@link string - input string} we return a 1 which means the pattern exists.
     */
    public int createTransitionTable(String P, String string){
        
        char charOfStudy;
        int m = string.length(); // it is the length of the input string
        /**
         * empty temporary string to which one character from 
         *the input string is added at every iteration
        */
       String temp = ""; 
       
       //loop to traverse the input string. q is declared as the state which we are studying currently
       for(int q=0;q<m;q++){
           
           charOfStudy = string.charAt(q);
           temp = temp + charOfStudy; //adding character from the string to temp one by one
           k = Math.min(k+1, q+2); // initializing k to a state jus next to current state or the state next to final state
           System.out.println(k);
           while(true){
               
               if(k==0){
                   break; // we break off from the loop if reach the first most state of NFA
               }
              
               if(temp.charAt(q) != P.charAt(k-1)){ // checking the character in study with the last character in pattern reached till now
                   k = k-1;
                   break;
               }
               
               break;
           }
           if(k==P.length()){
               return 1;
           }
       }  
         
       return -1;
       
    }
    public static void main(String[] args) {
        // TODO code application logic here
        
        PatternMatching patternMatching = new PatternMatching();
        
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the pattern");
        patternMatching.pattern = scanner.nextLine();
        
        System.out.println("Enter the string in which pattern has to be checked");
        patternMatching.inputString = scanner.nextLine();
        
        int present = patternMatching.createTransitionTable(patternMatching.pattern, patternMatching.inputString);
        
        if(present>-1){
            System.out.println("Pattern Present");
        }
        else{
            System.out.println("Pattern Not present");
        }
    }
    
}
