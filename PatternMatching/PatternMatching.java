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
 */
public class PatternMatching {

    /**
     * @param args the command line arguments
     */
    final static int NUMBER_OF_ALPHABETS = 5;
    final static int MAX_PATTERN_LENGTH = 10;
    public static char[] alphabet = new char[NUMBER_OF_ALPHABETS];
    
    /**
     * Function to create Transition table
     * @param P 
     * @return ST
     */
    public static int[][] createTransitionTable(char P[], int numberOfAlphabets, int numberCharPattern){
        System.out.println("tr started!");
        int k = 0; // variable that stores the lcongest prefix and suffix length
        int curState = 0; // variable that stores the current state in study
        int maxlength = 0;
        System.out.println("Pattern");
        for(int l = 0;l<numberCharPattern;l++){
            System.out.println(P[l]);
        }
        //counter that points to appropriate location in given patten and the temperary pattern in study
        int countP = 0;
       
        int[][] ST = new int[numberOfAlphabets][P.length]; // the transition table row:input col:state
        char T[] = new char[MAX_PATTERN_LENGTH ];
        for(int pattern=0;pattern<numberCharPattern;pattern++){
            int countT = pattern;
            for(int i = 0 ; i<numberOfAlphabets;i++){ // outer loop to take care of all possible inputs
                k=0;
                countT = pattern;
                countP = 0;
                System.out.println(countP);
                 T[pattern] = alphabet[i];
                 maxlength = 0;
                  System.out.println(T[pattern]);
                do{
                   
                    System.out.println("pattern = "+ pattern);
                    System.out.println("countT ="+countT);
                    k=0;
                    for(int a=0,b = countT;a<=countP;a++,b++){
                       // if (b<0){
                         //   System.out.println("b is equal to T.length");
                           // break;   
                        //}
                     
                        
                        System.out.println("P(a) = "+P[a]);
                        if(P[a]!=T[b]){
                            System.out.println("P(a) not equal to T(b)");
                            
                            k=-1;
                            break;
                        }
                        else{
                            System.out.println("i am in else");
                            k++;
                        }
                        
                        System.out.print("k = " + k);
                        if(k>curState){
                            curState = k;
                        }
                        
                    }
                    if(k>maxlength){
                            maxlength = k;
                    }
                    ST[pattern][i] = maxlength;
                     System.out.println("st = " + ST[pattern][i]);
                     
                         
                     
                     countP++; countT--;
                     System.out.println("value of countP = " + countP);
                }while(countP<=pattern);
                
               
            }
            T[pattern]= P[pattern];
        }
        
        return ST;
    }
    public static void main(String[] args) {
        // TODO code application logic here
        int numberOfAlphabets;
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter number of alphabets");
        numberOfAlphabets = scanner.nextInt();
        
        for(int i = 0; i<numberOfAlphabets; i++){
            try{
                System.out.println("Enter alphabet no "+ (i+1));
                alphabet[i] = scanner.next().charAt(0);
            }
            catch(Exception e){}
        }
        
        char[] Pattern = new char[MAX_PATTERN_LENGTH];
        int numCharInPattern;
        System.out.println("Enter the number of characters in pattern");
        numCharInPattern = scanner.nextInt();
        
        for(int pattern=0;pattern<numCharInPattern;pattern++){
            try{
                System.out.println("Enter "+(pattern+1)+" alphabet");
                Pattern[pattern] = scanner.next().charAt(0);
            }
            catch(Exception e){}
        }
        
        int[][] transitionTable = new int[numberOfAlphabets][Pattern.length+1]; // the transition table row:state col:input
        transitionTable = createTransitionTable(Pattern,numberOfAlphabets,numCharInPattern) ;
        System.out.println("THE TRANSITION TABLE");
        System.out.println();
        for(int k =0;k<numberOfAlphabets;k++){
            System.out.print(alphabet[k]+"   ");
        }
        System.out.println();
        for(int i=0;i<=Pattern.length;i++){
            System.out.print(i+1);
            for(int j=0;j<numberOfAlphabets;j++){
                System.out.print(transitionTable[i][j]+"   ");
            }
             System.out.println();
        }
        
    }
    
}
