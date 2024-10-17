class Solution {
  bool isPossibleToSplit(List<int> nums) {
    Map<int, int> numMap = {};
    if (nums.length.isOdd) {
      return false;
    }

    for (var num in nums) {
      if (numMap[num] == null) {
        numMap[num] = 1;
      } else {
        numMap[num] = numMap[num]! + 1;
      }
    }

    for (var value in numMap.values) {
      if (value > 2) {
        return false;
      }
    }

    return true;
  }
}
