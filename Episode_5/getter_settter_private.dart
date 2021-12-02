import 'dart:math';

import 'factory_constructor.dart';
import 'first_class_example.dart';
import 'odevler/Daire.dart';
import 'odevler/ogrenci.dart';
import 'musteri.dart';
import 'veritabani_islemleri.dart';

/**
 * Private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız.
 * Getter metotlar: sınıf dğeişkenlerini okumak için kullanılan özel fonksiyonlardır.
 * bu Metotların amacı özellikle private yani dış dümnyanın eişmine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.
 * 
 * Setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış düşyanın erişimine kapatılan değişkenlere veri atmaktır. Ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */
void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);

  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);
  print(tumOgrenciler[5].notDegeri);
  print(tumOgrenciler[5].id);

  for (Ogrenci sankiOgrenci in tumOgrenciler) {
    print(sankiOgrenci);
  }

  print("Tüm öğrencilerin ortalaması: " +
      notOrtalamasi(tumOgrenciler).toString());

  // Musteri ml = Musteri(152);
  // ml.bilgileriYazdir();
  // ml.musteriNoAta = 534;

  Daire d1 = Daire(-1);
  print(d1.alanHesapla());
  print(d1.cevreHesapla());

  // VeritabaniIslemleri db = VeritabaniIslemleri();
  // VeritabaniIslemleri db2 =
  //     VeritabaniIslemleri.loginWithNameandPassword("emre2", "123");
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}

double notOrtalamasi(List<Ogrenci> Liste1) {
  int toplam = 0;
  for (Ogrenci oankiOgrenci in Liste1) {
    toplam = toplam + oankiOgrenci.notDegeri;
  }
  return toplam / Liste1.length;
}


// class VeritabaniIslemleri {
//   // başına _ eklersek private olur. Ancak aynı dosyadaysa çalışır. Farklı dosyaya almak lazım.
//   String _kullaniciAdi = "Berkay";
//   String _sifre = "123456";

//   bool baglan() {
//     if (_kullaniciAdi == "Berkay" && _sifre == "123456") {
//       return true;
//     } else
//       return false;
//   }
// }
