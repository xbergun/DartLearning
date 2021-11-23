/*
Fonksiyon - method kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay
uygulamalar geliştirebiliriz.
Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
Bunun için method veya fonksiyon oluşturabiliriz.
Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
Methodlar geriye bir değer dönderebilir. Değer döndürmeyen method tanımlarının başına void yazılır.
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda değiliz.(Belirtilmesi önerilir);

-- Classların member fonksiyonlarına method denir.
 */

void main(List<String> args) {
  // print(cevreyiHesapla(5,10));
  sayilaritopla();
  print(sayilariCikar(15, 4));
  print(" Çarpım; " + sayilariCarp(13, 23).toString());
}

void sayilaritopla() {
  var sayi1 = 10, sayi2 = 5;
  print("Toplam ${sayi1 + sayi2}");
  print("Büyük Olan Sayi : " + maxOlaniBul(13, 14).toString());



}

int sayilariCikar(int s1, int s2) {
  return s1 - s2;
}

//Kısa gösterim; tek bir kod satırı geri döndürüyorsa içeriyorsa böyle yapabiliriz. Tek bir satırlık kod olmak zorunda.
int sayilariCarp(int s1, int s2) => s1 * s2;

int maxOlaniBul(int s1, int s2) => s1 > s2 ? s1 : s2;



