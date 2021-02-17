public inherited sharing class bracketsAreBalanced {
    public static Boolean bracketsAreBalanced( String s ) {
    // Let's create a map our our universe of characters against which we check
    // the keys = open brackets and values = close brackets
    Map<String, String> openbrackets = new Map<String, String>{'('=>')','['=>']', '{'=>'}' };
    /**openbrackets.put('(', ')');
    openbrackets.put('[', ']');
    openbrackets.put('{', '}');*/
     // Let's create a set our universe of closing brackets to help us check if a bracks is close
    Set<String> closebrackets = new Set<String>(openbrackets.values());

    // This list will hold the closing bracket instead of the opening one
    // so the check when we'll find a closing bracket will be smooth
    List<String> stack = new List<String>();
    Boolean Balanced = true; // closing in th right order

    // Let's Convert Our String to an array of barcket characters;
    //string[] input=s.split('');

    for (String ch : s.split('')) {
          //is the char part of our map keys meaning part of open brackets;
         if (openbrackets.containsKey(ch)){
            stack.add(openbrackets.get(ch));
         } 
         else if (closebrackets.contains(ch)){
          //if char is a closing brackets that means our stack must have elements if it was balanced
           String str=stack.isEmpty()? null:stack.remove(stack.size()-1);
           if (ch!=s){
            Balanced = true;
             break;
            }
           }
         }
         return Balanced;
    }   
}