import '1-util.dart';
import 'dart:convert';


Future<String> getUserId() async {
  String user = await fetchUserData();
  Map userMap = jsonDecode(user);
  String userId = userMap["id"];
  return(userId);
}