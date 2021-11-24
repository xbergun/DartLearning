/* 

* List ikiye ayrılır.
* 1-SAbit Uzunluklu
* 2- Büyüyen Listeler 

* Diğer dillerde dizi olarak bilinen yapılar, dart dilinde sabit uzunluklu liste olarak kullanılır.

* List<int> numaralar = List.filled(10,0); // 10 eleman içeren sabit uzunluklu liste yani dizi.abstract

* Index numaraları 0 dan başlar yani listenin ilk elemanına erişmek için 0. indexine bakılır.

*/

void main(List<String> args) {
  int sayi = 4;
  List<int> sayilar = List.filled(4, 0, growable: false);
  sayilar[0] = 5;
  sayilar[1] = 4;
  sayilar[2] = 5;
  print(sayilar);
  print(sayilar.length);

  List<String> isimler = List.filled(5, "");
  print(isimler);
  isimler[0] = 5.toString();
  print(isimler);

  //Aynı listede hem string hem int tutamaz mıyız? Üstüne geldiğinide dynamic yazıyor
  List karisik = List.filled(5, 0);
  print(karisik);
  karisik[0] = "Emre";
  karisik[1] = 4;
  print(karisik);

  //Liste elemanlarını Gezmek
  for (var i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }
  print("**************************");
  for (int oankiEleman in sayilar) {
    print(oankiEleman);
  }
}
