/*
ternary if yazılımı ile kısa bir şekilde şart belirten ifafeler yazılabilir. Kullanımı :
koşul ? expression1 : expression2
eğer koşul doğru ise expression1 değeri, yanlış ise expression2 değeri kullanılır.
kısa kullanım ile değişkenlerin null değerde olup olmadıkları da kontrol edilebilir
expression1 ?? expression2
burda expression1 eğer null değilse kullanılır, eğer null ise expression2 kullanılır.
 */
void main(List<String> args) {
  int sayi1 = 4;
  var sayi2 = 6;
  int kucuksayi;

  sayi1 < sayi2 ? kucuksayi = sayi1 : kucuksayi = sayi2;

  String? Ad = null;
  String? soyad = "ergün";
  String? mesaj;
  mesaj = Ad ?? soyad; 
  //ad değişkeni null değilse mesaja onu koy. Eğer nullsa soyadi koy

  print("Merhaba $mesaj  ");
}
