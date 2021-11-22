//ilk soru

import 'dart:collection';

void main(List<String> args) {
  var adim = "Berkay";
  var soyadim = "Ergün";
  var yasim = 22;
  
  print(
      "Benim Adim ${adim + " " + soyadim} yasim $yasim ismimdeki karakter sayisi ${adim.length + soyadim.length} ");

  var firstKenar = 3;
  var secondKenar = 4;
  var thirdKenar = 5;

  print(
      "İlk kenari $firstKenar, ikinci kenari $secondKenar ve son kenari $thirdKenar olan üçgenin çevresi ${firstKenar + secondKenar + thirdKenar} dir. ");
}
