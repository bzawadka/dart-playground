/*
 * A closure is a function object that has access to variables
 * in its lexical scope, even when the function is used
 * outside of its original scope.
 */

/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

main() {
  // create a function that adds 2
  var add2 = makeAdder(2);

  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(5) == 9);
}