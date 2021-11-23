import 'dart:io';

void main(List<String> args) {
  int? sayial = int.parse(stdin.readLineSync()!);

  print("Hesaplamak istediğiniz sayiyi girin: $sayial");

  int sonuc = ciftsayi(sayial);
  print("Sonuc: $sonuc");

  print("*************************");
  num daire = daireAlani(5);
  print("Daire Alani : $daire");
}

int ciftsayi(int s1) {
  var toplam = 0;
  for (var i = 0; i < s1; i++) {
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }
  return toplam;
}

num daireAlani(num r, {num pi = 3.14}) {
  return r * pi;
}
