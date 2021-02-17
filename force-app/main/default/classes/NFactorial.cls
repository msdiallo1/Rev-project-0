   /*
     * 3. Return the factorial of n.
     * Test Cases:
     * Input: 0    Output: 1
     * Input: 1    Output: 1
     * Input: 3    Output: 6
    */

public inherited sharing class NFactorial {

    public static Integer NFactorial(Integer n) {

        //Define a list
        List<Integer> myList = new Integer[n];

        Integer fact;

        for (Integer i=0; i<n; i++){
            if (i<2){
                myList.set(i,1);
                fact=myList.get(i);
            }
            else{ Integer k=i;
                for (Integer j = i-1; i>0; i--){
                    myList.set(i, i*myList[j]);
                    fact=myList.get(i);
                    i=j;
                }                
            }
           
        } 
        return fact;
    }
}
