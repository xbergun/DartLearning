import 'dart:io';

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar.");
  uzunSurenIslem();
  print("Peyinr Zeytin hazırlanır");
  print("Kahvaltı Hazırlanır");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    //uygulama arayüzünü kitlememek için ayrı bi yerde işlem iyapar. Siz de başka şeyler yapmaya devam edersiniz.
    return "Çocuk ekmekle eve girer";
  });
  return sonuc;
}


//dart single thread, 