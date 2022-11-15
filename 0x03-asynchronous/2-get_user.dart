Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

Future<void> getUser() async {
  try {
    final user = await fetchUserData();
    print(user);
  } catch (e) {
    print('error caught: $e');
  }
}
