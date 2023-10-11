class Solution {
  int romanToInt(String s) {
    Map<String, int> symbols = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    int output = 0;
    List<String> characters = s.split('');

    for (int i = 0; i < characters.length; i++) {
      int j = i + 1;

      if (j < characters.length &&
          symbols[characters[i]]! < symbols[characters[j]]!) {
        output -= symbols[characters[i]]!;
        print("${output} in sub");
      } else {
        output += symbols[characters[i]]!;
        print("${output} in add");
      }
    }

    return output;
  }
}
