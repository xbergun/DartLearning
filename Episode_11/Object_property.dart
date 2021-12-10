import 'dart:math';

/**
 * Sınıflarımızı oluştururken oluşturduğumuz değişkenler(property) için de null safety özellikleri geçerlidir. Bu özellikleri ilk defa uyguladığımızda karışık gelebilir. 
 * 
 * Çünkü bu propertylerin getter ve setter metotları doğrudan veya dolaylı olarak vardır. Bundan dolayı da bu değişkenler aynı scope içinde farklı değerler üretebilirler. Siz bu yapılara her erişim yağtığınızda farklı sonuçlar alabilirsiniz.
 * 
 * Bunun çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken üzerinden kontrollerie yapmanızdır.
 */

class RastgeleMetinUretici {
  String? deger() {
    if (Random().nextBool()) {
      return "String ifade";
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  if (uretici.deger() == null) {
    print("Null değer oldu");
  } else {
    metniYazdir(uretici.deger());
  }
}

void metniYazdir(String? ifade) {
  print(ifade);
}
