import '0-util.dart';

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}

fetchUsersCount() {
}

main() async {
  await usersCount();
}
