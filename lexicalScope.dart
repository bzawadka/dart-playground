bool topLevel = true;

/* Dart is a lexically scoped language, which means that the scope
   of variables is determined statically, simply by the layout of the code */
void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);

      print(topLevel);
      print(insideMain);
      print(insideFunction);
      print(insideNestedFunction);
    }

    nestedFunction();
  }

  myFunction();
}
