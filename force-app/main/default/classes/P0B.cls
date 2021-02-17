
    /////////////////////////////////////////////////////////////////
    //
    // Name: Project 0 Bravo
    // Author: mamadou.diallo@revature.net
    // Date: 02/16/2021
    // Description: Series of apex methods to demonstrate
    // basic understanding of coding concepts.
    //
    /////////////////////////////////////////////////////////////////



public inherited sharing class P0B {

    /*
     * 1. Return the nth Fibonacci number
     * Test Cases:
     * Input: 0     Output: 0
     * Input: 1    Output: 1
     * Input: 2     Output: 1
     * Input: 10    Output: 55
    **/
    
    public static List<Integer> NFibonacci(Integer n) {
       //
      /*Initialize a list of integers */
      //List<Integer> myList = new List<Integer>();
      //Integer[] myList = new List<Integer>();
       List<Integer> myList = new Integer[n];
     /* */
      for(Integer i=0; i<n; i++){
          if (i<2){
             // Adds the integer 1 to the list at index i
            myList.set(i,1);      
            System.debug(myList[i]);
          }
          else {
            myList.set(i, myList.get(i-1)+myList.get(i-2));
            System.debug(myList[i]);
          }   
      }  
      return myList;
  }   

     /*
     * 2. Sort a list of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */

    public static List<Integer> SortList(List<Integer> inputList) {      
        // Initialization of my list/array
        List<integer> myListSorted = new Integer[inputList.size()];

        for (Integer i=0; i<inputList.size(); i++) {
            for (Integer j=i+1; j<inputList.size(); j++){
                if (inputList[i]<inputList[j]){
                    myListSorted[i] = inputList[i];
                } else{
                    myListSorted[i] = inputList[j];
                }
            }          
        }
        System.debug(myListSorted);
        return myListSorted;
  }

/*
  * 3. Return the factorial of n.
  * Test Cases:
  * Input: 0    Output: 1
  * Input: 1    Output: 1
  * Input: 3    Output: 6
 */

  public static Integer NFactorial(Integer n) {
 
         //Define a list
         List<Integer> myList = new Integer[n+1];
 
         Integer fact;

         for (Integer i=0; i<=n; i++){

             if (i<2){
                 myList.set(i,1);
                 fact=myList.get(i);
             }
             else 
             { 
                 Integer j=i-1;
                 myList.set(i, i*myList[j]);
                 fact=myList.get(i);
             }
          } 
          System.debug(myList);
        System.debug(fact);
        return fact;
     }

 /** 
  * 4. Rotate left
  * Given a list, list, and an integer, n, rotate the values in list left n times and return list
  * Test Cases:
  * Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
  * Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
  * Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
  **/

  public static List<Integer> rotateLeftNTimes(List<Integer> nList, Integer n) {
        
         List<Integer> temp = new Integer[nList.size()];
                  
         Integer j =1; 
         // Rotate the List as long as the number of rotation is not reached
         while ( j<=n) {
            for (Integer i=0; i<nList.size(); i++) {
              if (i==nList.size()-1) {
                 temp.set(i, nList[0]);
               } 
               else{
                  temp.set(i, nList[i+1]);
               } 
            }

           //refill nList with the new order
           for(Integer i=0; i<nList.size(); i++){
                nList.set(i, temp[i]);
            }
          j=j+1  ; 
         }
         //debug and return

         System.debug(nList);
         return nList;
 }


 /*
  * 5. Balanced Brackets
  * A bracket is any one of the following: (, ), {, }, [, or ]
  * 
  * The following are balanced brackets:
  *    ( )
  *    ( ) ( )
  *    ( ( ) )
  *    ( { [ ] } )
  *
  * The following are NOT balanced brackets:
  *   (
  *   )
  *   ( ( )
  *   ( [ ) ]
  *
  * Return true if balanced
  * Return false if not balanced
 */
public static Boolean bracketsAreBalanced( String s ) {
    // this map holds every characters you want to check
    // the keys are the opening brackets
    // the values ares the closing brackets
    Map<String, String> brackets = new Map<String, String>();
    brackets.put('(', ')');
    brackets.put('[', ']');
    brackets.put('{', '}');

    // This set is used to check whether a char is a closing bracket
    // Keep in mind that Set.contains() runs in constant time
    Set<String> closing = new Set<String>(brackets.values());

    // This list will hold the closing bracket instead of the opening one
    // so the check when we'll find a closing bracket will be smooth
    List<String> stack = new List<String>();
     
    //Initialize the boolean
    Boolean isBalanced = true;

    for (String ch : s.split('')) {
        if (brackets.containsKey(ch)) {
            // if the current char is an opening bracket
            // the related closing bracket is added to the list
            stack.add(brackets.get(ch));
        } else if (closing.contains(ch)) {
            // it must be equal to the last char added to the list
            String str = stack.isEmpty() ? null : stack.remove(stack.size()-1);
            if (ch != str) {
                // otherwise the brackets aren't balanced and we can stop iterating over characters
                isBalanced = false;
                break;
            }
        }
    }
    // isValid is true only if the closing brackets are in the right order
    // the list is empty only if there is a closing bracket for every opening one 
    System.debug(isBalanced);
    return isBalanced;
}


    /*
     * 6. Create a method that retrieves a list of all accounts and updates those accounts.
     *      Create a custom field on the Account standard object called Size__c that will be a 
     * picklist containing small/medium/large.
     *     Create a method that retrieves a list of all accounts. 
     *         - If an account has between 1-1000 employees then it is classified as small.
     *         - If an account has between 1001-10000 employees it is classified as medium.
    *         - If an account has more than 10000 employees it is classified as large.
     *     Update the Size__c field on each account to reflect the amount of employees in the Account.
    */
    
    
    public static void updateAccountSize( ) {

        // Retrieve a list of all accounts
        List<Account> allAccounts = [SELECT Id, Name, NumberOfEmployees FROM Account];

        for (Account aAccount : allAccounts) {

            String classified;

            if (aAccount.NumberOfEmployees>1 && aAccount.NumberOfEmployees<=1000) {
                aAccount.Size__c='SMALL';
            }
            else if (aAccount.NumberOfEmployees>1000 && aAccount.NumberOfEmployees<=10000) {
                aAccount.Size__c='MEDIUM';
            }
            else if (aAccount.NumberOfEmployees>10000){
                aAccount.Size__c='LARGE';
            }
        }

        update allAccounts;
    }

    /* 
     * 7. Create a method that will find all leads that contain 'ca' in their fields. 
     *     If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
     * Converted' and their description should display the message, "We are no longer doing 
     * business in California."
     */

    
    public static void updateCALeads( ) {

        List<Lead> caLeads = [SELECT Id, Name, PostalCode FROM Lead];

        for(Lead aLead : caLeads){
            
            if (aLead.PostalCode =='ca'){
                aLead.Status='Closed - Not Converted';
                aLead.description='We are no longer doing business in California.';
            }
        }
        update caLeads;
    }

    /*
     * 8. Create a method that will find all Opportunities which have already passed their Close Date 
     * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
     * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
     */

     
    public static void closePastDueOpportunities( ) {

        List<Opportunity> ClosedOpps=[SELECT Id, StageName FROM Opportunity WHERE CloseDate < TODAY AND StageName != 'Closed Won'];

        for (Opportunity anOpp: ClosedOpps) {
            anOpp.StageName= 'Closed Lost';
             
        }

        update ClosedOpps;
    }



}