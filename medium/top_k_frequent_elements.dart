class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> mapItemFrequent = {};
    List<int> items = [];

    if (nums.length == 1 && k > 0) {
      return nums;
    } else {
      for (var element in nums) {
        if (mapItemFrequent.containsKey(element)) {
          mapItemFrequent[element] = mapItemFrequent[element]! + 1;
        } else {
          mapItemFrequent[element] = 1;
        }
      }

      var sortedEntries = mapItemFrequent.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value));
      final sortedMap = Map.fromEntries(sortedEntries);
      if (sortedMap.keys.length < k) {
        items = sortedMap.keys.toList();
      } else {
        for (var key in sortedMap.keys) {
          if (items.length < k) {
            items.add(key);
          }
        }
      }

      return items;
    }
  }
}
