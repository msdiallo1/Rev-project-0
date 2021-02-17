
    /*
     * 1. Return the nth Fibonacci number
     * Test Cases:
     * Input: 0     Output: 0
     * Input: 1    Output: 1
     * Input: 2     Output: 1
     * Input: 10    Output: 55
    */
    
public inherited sharing class NFibonacci {
   
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
}
