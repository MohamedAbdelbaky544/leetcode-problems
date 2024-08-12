class Solution {
  bool isAnagram(String s, String t) {
    Map<String, int> firstString = {};
    Map<String, int> secondString = {};
    bool output = false;
    if (s.length != t.length) {
      return output;
    } else {
      for (var i in s.split('')) {
        if (firstString.containsKey(i)) {
          firstString[i] = firstString[i]! + 1;
        } else {
          firstString[i] = 1;
        }
      }
      for (var i in t.split('')) {
        if (secondString.containsKey(i)) {
          secondString[i] = secondString[i]! + 1;
        } else {
          secondString[i] = 1;
        }
      }
      for (var element in firstString.entries) {
        if (secondString[element.key] == element.value) {
          output = true;
        } else {
          output = false;
          break;
        }
      }

      return output;
    }
  }
}
