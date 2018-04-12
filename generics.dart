
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

main() {
  var names = new List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
  //names.add(42); //Error

  // Dart generic types are reified, which means that they carry their type information around at runtime.
  print(names is List<String>); // true

}

T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}