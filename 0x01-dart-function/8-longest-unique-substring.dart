String longestUniqueSubstring(String str) {
  List<String> substrings = [];

  for (int i = 0; i < str.length; i++) {
    String currentSubstring = '';
    Set<String> seenChars = {};

    for (int j = i; j < str.length; j++) {
      if (seenChars.contains(str[j])) {
        break;
      }
      currentSubstring += str[j];
      seenChars.add(str[j]);
    }
    substrings.add(currentSubstring);
  }

  substrings.sort((a, b) => b.length.compareTo(a.length));

  return substrings[0];
}

void main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
