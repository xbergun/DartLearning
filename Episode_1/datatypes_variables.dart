/* VERI TİPLERİ VE DEĞİŞKEN KAVRAMI
DEGİSKEN :  Bir işlemi gerçekleştirmek için yapılması gereken ilk şey o veriyi hafızaya almaktır. İşlem yapmak istediğimizde de 
veriyi hafızadan çağırıp gerekli işlemleri yerine getirmektir. Hafızadaki verirleri ifade etmek için programlama dillerinde 
değişkenleri kullanırız. Özetle vermek gerekirse; programlama dilinde işlediğimiz verileri bilgisayarın
hafızasında tutmak için yapmış olduğumuz tanımlamalardır.
Tutulan verinin türüne göre farklı veri tipleri vardır. Dart built - in olarak şu tipleri içerir.
- Number
  - int tamsayılar
  - double ondalıklı sayılar
- String metinsel ifadeler
- Boolean true/false
- List (dizi olarak da bilinir)
- Maps
- Runes (String formattaki unicode karakterler)
- Symbols 
Tüm veri tipleri Object yani nesneleridir. Bu yüzden varsayılan değerleri null'dir.
var anahtar kelimesi variable anlamına gelir ve veri türünü belirtmek istemiyorsak kullanırız. Atanan ifadeye göre otomatik olarak türü belirtr
*/
import 'dart:ffi';

void main(List<String> args) {
  int yas = 22;
  String isim = "berkay";
  num avarage = 4.5;
  print(yas);

  bool erkekMi = true;
  bool issizMi = false;
  print(erkekMi);

  var yas2 = 23;
  var isim2 = "berkay";
  print(yas2.toString() + " " + isim2);

  int nullsafety;
  //print(nullsafety);
  //Dart nullsafety dir, yani değişken oluşturduğunda bellekte oluşuyor.
  //ancak işi boş olarak oluşuyor dart bunu sevmez.

  double? s1 = null; //varsayılan olarak null atayamayız.
  //doublenin önüne ? işarati koymak, onun null olabilir ona göre işlem yap anlamına gelir.
  
}
