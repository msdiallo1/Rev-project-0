   /*
     * 2. Sort a list of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */

public inherited sharing class SorList {

     public List<Integer> SortList(List<Integer> inputList) {      
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
}