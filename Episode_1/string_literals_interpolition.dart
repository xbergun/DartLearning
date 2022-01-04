/*
String : Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur. 
  'ifade 1'
  'ifade 2' olarak kullanilabilir.
 
Interpolation : string ifade içinde baska bir string ifadeyi $ifade olarak kullabiliriz. Böylece + kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation dieğer veri türleri için de geçerlidir.
*/

import 'dart:web_gl';

void main(List<String> args) {
  String isim = "Dart";
  String soyisim = "Flutter";

  print("İsim: $isim , ve Soyisim: $soyisim");

  // Tırnak içinde değişken yazdırabilmek için dolar işareti kullanıyoruz.
  // print("Karakter Sayısı ${surname.length}");
  //eğer ifade birden fazla . şeklinde metod içeriyosa, gruplandırmak için süslü parantez.

  var yas = 55;
  var boy = 1.64;
  var kilo = 75;

  print("Benim Yaşım, $yas, kilom: $kilo, ve boyum: $boy dur.");

  int kisaKenar = 3;
  int uzunKenar = 5;

  print(
      "Dörtgenin Alani: ${kisaKenar * uzunKenar}, ve çevresi de ${(kisaKenar + uzunKenar) * 2} dir. ");
}
