import 'dart:io';

void main(List<String> args) {
  print("Ogrencinin ilk Notunu Giriniz..");
  var firstNote = int.parse(stdin.readLineSync()!);
  print("Ogrencinin ikinci Notunu Giriniz..");
  var secondNote = int.parse(stdin.readLineSync()!);
  print(
      "Ogrencinin ilk notu: $firstNote ve ikinci notu $secondNote dir. Ortalaması ise ${(firstNote + secondNote) / 2} dir");

  print("Ürün Fiyatını Giriniz");
  var ilkFiyat = int.parse(stdin.readLineSync()!);
  var kdvlifiyat = ilkFiyat * 0.18;
  print(
      "İlk fiyatı $ilkFiyat olarak girilen ürünün kdv eklendikten sonraki fiyatı ${(ilkFiyat + kdvlifiyat)} tir.");
}
