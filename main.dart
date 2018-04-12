var _nobleGases = {
	2: 'helium',
	10: 'neon',
	18: 'argon',
};

_printLine() => print('----------------');

void main() {
	for (int i = 0; i < 5; i++) {
		print('hello ${i + 1}');
	}
  _printLine();

	//Runes
	var clapping = '\u{1f44f}';
	print(clapping);
	print(clapping.codeUnits);
	print(clapping.runes.toList());

	Runes input = new Runes('\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
	print(new String.fromCharCodes(input));
  _printLine();

	//Functions - even functions are objects and have a type: Function
  bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
  print(isNoble(10));

  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');
  print(loudify('hello'));

  var list = ['apples', 'bananas', 'oranges'];
  list.forEach(
      (item) => print('${list.indexOf(item)}: $item'));
}

