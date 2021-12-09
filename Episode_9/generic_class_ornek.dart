void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("Emre");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("asd");


  //biz burda string dediğimizde, class da T yerine belirttiğimiz yere string yazılıyor. İnt dediğimizde int yazılıyor. Böylece tip kontrolü yapabildiğimiz bir sınıf oluşturduk.
  GenericStack<String> genericStack = GenericStack();
  genericStack.push("Emre");

}

class MyStack {
  List _listem = [];

  push(yeniEleman) {
    _listem.add(yeniEleman);
  }

  pop() {
    return _listem.removeLast();
  }
}

class IntMyStack {
  List _listem = <int>[];

  void push(int yeniEleman) {
    _listem.add(yeniEleman);
  }

  int pop() {
    return _listem.removeLast();
  }
}

class StringMyStack {
  List _listem = <String>[];

  void push(String yeniEleman) {
    _listem.add(yeniEleman);
  }

  String pop() {
    return _listem.removeLast();
  }
}

//Generic classlar bizi üstteki karmaşıklıktan kurtarıyor. Sen bana T türünde bir veri yolla. Yani string yollandığı zaman string yazmış oluyor.

class GenericStack<T> {
  List<T> _listem = <T>[];

  void push(T yeniEleman) {
    _listem.add(yeniEleman);
  }

  T pop() {
    return _listem.removeLast();
  }
}
