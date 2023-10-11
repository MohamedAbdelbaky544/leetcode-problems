class Solution {
  String longestCommonPrefix(List<String> strs) {
    strs.sort();
    String output = '';

    for (int i = 0; i < strs.first.length; i++) {
      if (strs.first[i] != strs.last[i]) {
        break;
      } else {
        output += strs.first[i];
      }
    }
    return output;
  }
}
