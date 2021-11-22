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

void main(List<String> args) {
  String isim = "Berkay";
  String soyIsim = "Ergün";

  print("$isim $soyIsim");
  // Tırnak içinde değişken yazdırabilmek için dolar işareti kullanıyoruz.
  print("Karakter Sayısı ${soyIsim.length}");
  //eğer ifade birden fazla . şeklinde metod içeriyosa, gruplandırmak için süslü parantez.
  
}
