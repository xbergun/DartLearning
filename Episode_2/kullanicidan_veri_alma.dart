import 'dart:io';

void main(List<String> args) {
  print("Adinizi giriniz");
  String isim = stdin.readLineSync()!;
  print("Girilen isim $isim");


  print("yas giriniz");
  //Kullanıcıdan aldığımız veri string oldugu için int e çeviriyoruz.
  int? yas = int.parse(stdin.readLineSync()!);
  //kullanıcıdan aldığın null olabilir bunu string gibi kullanamazsın burası null olmucak merak etme koy sen ! anlam.
  print("Girilen yas $yas");
}
