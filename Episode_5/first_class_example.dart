//Nesneye yönelimli programlamaya giriş
import 'dart:html';

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
  Ogrenci ogr1 = Ogrenci();
  print(ogr1.ogrAd);
  Ogrenci ogr2 = Ogrenci();

  var kubra = Ogrenci();
  dynamic berkay = Ogrenci();
  
}

class Ogrenci {
  //instance variables
   int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;

  void dersCalis() {
    print("Öğrenci Ders Çalışıyor");
  }
}
