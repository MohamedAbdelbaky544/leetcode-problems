void main(List<String> args) {
  Solution item = Solution();
  item.groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]);
}

class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = {};
    strs.forEach((str) {
      final s = str.split('');
      s.sort();
      final key = s.join();
      if (map.containsKey(key))
        map[key]!.add(str);
      else
        map[key] = [str];
    });
    print(map.values.toList());
    return map.values.toList();
  }
}
