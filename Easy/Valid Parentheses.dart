class Solution {
  bool isValid(String s) {
    Map<String, String> parenthess = {
      ")": "(",
      "}": "{",
      "]": "[",
    };
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      if (stack.length == 0) {
        stack.add(s[i]);
      } else {
        if (stack.length > 0) {
          if (parenthess[s[i]] == stack[stack.length - 1]) {
            stack.removeAt(stack.length - 1);
          } else {
            stack.add(s[i]);
          }
        }
      }
    }
    if (stack.length == 0) {
      return true;
    } else {
      return false;
    }
  }
}
