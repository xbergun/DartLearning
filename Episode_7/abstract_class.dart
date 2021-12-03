/**
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 * 
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 * 
 * 
 */

void main(List<String> args) {
  //Sekil s1 = Sekil(); bunu yapamayız. Çünkü abstract sınıflanrdan nesne türetemeyiz.

  Sekil s1 = Kare(3); // ama kare oluşturabiliriz.
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = Dikdortgen(6, 4);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());

  List<Kare> tumKareler = [];
  List<Dikdortgen> tumDikdortgen = [];
  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);
  //artık sekil diyerek hem kareyi hem diktörtgeni tutabiliriz liste içinde.
  //normal kalıtımla yapsaydık, şekil sınıfından nesne türetebilirdik biz bunu istemiyoruz. Ve o alanhesapla gibi fonksiyonların içini doldurmak zorunda kalırdık. Zaaten nasıl doldurcağını bilmiyor.
  test(s1);
  test(s2);
}
//tek bir fonksiyon 2 farklı türdeki yapıyı alıp işlem yaptırabiliyor.
void test(Sekil sekil) {
  sekil.selamla();
}

//double döndürcez ama bilgi eksik yazamıyoruz içini. Sekil sınıfı aşırı genel aşırı soyut, ne olduğu belli değil. ondan dolayı kareye somut denir. Benim amacım ne? kareyi dikdörtgeni vs fonksiyonlarını ortak bir class da toplamak. O yüzden sen abstract ol soyut ol. Sen aşırı genel bir ifadesin. Sana daha somut örnekleri ben açıklayacağım. bu 1. adım.
//2. adım,
abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print(
        "gövdesi dolu olan fonksiyonlarda olabilir, en az 1 tane dolduralamayan olması yeterlidir.");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    // TODO: implement selamla
    print("Ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  int kisaKenar;
  int uzunKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);

  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return (kisaKenar * 2) + (uzunKenar * 2).toDouble();
  }

  @override
  void selamla() {
    // TODO: implement selamla
    print("Ben Dikdörtgen sınıfındanım");
  }
}
