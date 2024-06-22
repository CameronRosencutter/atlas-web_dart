import 'dart:convert';


Future<String> getUserId() async {
  final userData = await fetchUserData();
  final Map<String, dynamic> userMap = jsonDecode(userData);
  return userMap['id'];
}

fetchUserData() {
}
