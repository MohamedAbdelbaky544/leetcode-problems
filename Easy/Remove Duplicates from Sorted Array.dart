class Solution {
  int removeDuplicates(List<int> nums) {
    int left = 1;
    if (nums.length > 0) {
      for (int r = 1; r < nums.length; r++) {
        if (nums[r] != nums[r - 1]) {
          nums[left] = nums[r];
          left++;
        }
      }

      return left;
    } else {
      return left;
    }
  }
}
