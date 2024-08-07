class Solution {
  Set<int> numbers = {};
  bool containsDuplicate(List<int> nums) {
    for (var num in nums) {
      numbers.add(num);
    }

    if (numbers.length == nums.length) {
      return false;
    } else {
      return true;
    }
  }
}
