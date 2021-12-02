//Nesneye yönelimli programlamaya giriş

/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 * 
 */

void main(List<String> args) {
  Ogrenci1 ogr1 = Ogrenci1();
  print(ogr1.ogrAd);
  Ogrenci1 ogr2 = Ogrenci1();

  var kubra = Ogrenci1();
  dynamic berkay = Ogrenci1();
  
}

class Ogrenci1 {
  //instance variables
   int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;

  void dersCalis() {
    print("Öğrenci Ders Çalışıyor");
  }
}
