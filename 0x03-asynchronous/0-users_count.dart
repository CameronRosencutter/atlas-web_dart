Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 32,
    );

Future<void> usersCount() async {
  final count = await fetchUsersCount();
  print(count);
}

void main() async {
  await usersCount();
}
