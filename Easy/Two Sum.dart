class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> output = [];

    Map<int, int> ints = {};
    for (int i = 0; i < nums.length; i++) {
      if (ints.containsKey(nums[i])) {
        int? complementindex = ints[nums[i]];
        if (complementindex != null) {
          output = [i, complementindex];
        }
      }

      ints[target - nums[i]] = i;
    }
    return output;
  }
}
