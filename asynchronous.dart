
main() {
  Future<String> future = checkVersion();

  future
      .then((value) => print(value))
      .catchError((error) => print('bad luck'));
}

Future checkVersion() async {
  try {
    var version = await lookUpVersion();
    // Do something with version
    return version;

  } catch (e) {

  }
}

Future<String> lookUpVersion() async => '1.0.0';

//String lookUpVersion() => '1.0.0';
