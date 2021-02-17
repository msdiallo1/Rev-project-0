    /** 
     * 4. Rotate left
     * Given a list, list, and an integer, n, rotate the values in list left n times and return list
     * Test Cases:
     * Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
     **/

     public inherited sharing class rotateLeftNTimes {

    public static List<Integer> rotateLeftNTimes(List<Integer> nList, Integer n) {
       
        List<Integer> rotatedLeftList = new Integer[nList.size()];
        List<Integer> temp = new Integer[n];
        List<Integer> rest = new Integer[nList.size()-n];

        //let's store create a temporary list of th first n elements of nList
        for (Integer i=0; i<n; i++){
            temp.set(i, nList[i]);  
        }
        //Let's store the rest of the elements of nList
        for (Integer i=n; i<nList.size(); i++){
            rest.set(i, nList[i]);  
        }

        //Let's put them back together backward
        rotatedLeftList.addAll(temp);
        rotatedLeftList.addAll(rest);
        
        //debug and return
        System.debug(nlist);
        System.debug(temp);
        System.debug(rest);
        System.debug(rotatedLeftList);
        return rotatedLeftList;
    }
}

