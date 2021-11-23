void main(List<String> args) {
  // print("Syilari topla 2 Opsiyonel: " + sayilariTopla2(5, 3,5).toString());

  int toplam = sayilariTopla3(3,
      sayi2: 5,
      sayi3:
          1); // burada rastgele sırada parametre yollayabiliyoruz. Null olmasın diye fonksiyonda 0 yazdık.
  print("Toplam : $toplam");

  print("******************");

  print(hacimHesapla(boy:5,en:10));
}

/* Parametreyi opsiyonel hale getirmek için köşeli parantez kullanıyoruz. Burada ister yolla ister yollama. Ancak null yolladığı için kızıyor bunun için kullanıcı değer vermezse 0 koyuyoruz. Köşeli parantez olunca opsiyonel oluyor işte.

int sayilariTopla2(int sayi1, int sayi2, [int sayi3=0]) {
  return sayi1 + sayi2 + sayi3;
}
*/

//Optianal named, opsiyonel isimlendirilmiş, Bu sayede rastgele sırada değer verebiliyoruz.
//Sayı4 zorunlu, diğerleri opsiyonel Süslü parantez ile köşeli aynı anda kullanılmaz. İsimlendirilmiş demek kullanıcı istediği sırayla girebilsin demek
int sayilariTopla3(int sayi4, {int sayi1 = 0, int sayi2 = 0, int sayi3 = 0}) {
  return sayi4 + sayi1 + sayi2 + sayi3;
}

//her zaman parametre tiplerini vermeye çalışalım. Çünkü değer yollamadığımız zaman null olarka algılıyor ve program patlıyor. verdiğimiz zamanda default parametre vermeliyiz.
int hacimHesapla({int boy=1,int en=1}) {
  return boy * en;
}
