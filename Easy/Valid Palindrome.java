class Solution {
     public  boolean isPalindrome(String s) {

        String fixedString ="";
        for(char c : s.toCharArray()){
            if(Character.isLetter(c) || Character.isDigit(c) ){
                    fixedString += c;
            }
        }
        fixedString =fixedString.toLowerCase();

        System.out.println(fixedString);

        int i = 0;
        int left = fixedString.length() - 1;
      
        
        while(i <= left){
            if(fixedString.charAt(i) != fixedString.charAt(left)){     
            return  false;
            }
            i++;
            left--;
        }
     
        return true;
    }
}
    
