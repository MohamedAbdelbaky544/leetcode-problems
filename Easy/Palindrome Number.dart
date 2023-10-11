class Solution {
  bool isPalindrome(int x) {
    int isReversed = 0;
    int number = x;
    while (number != 0) {
      isReversed = isReversed * 10 + number % 10;
      number ~/= 10;
    }

    return isReversed == x;
  }
}
