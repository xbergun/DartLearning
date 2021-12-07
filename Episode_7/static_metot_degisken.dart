/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada karsımıza static kavramı cıkar.
Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.
ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
statik methodların içinde this anahtar kelimesi kullanılmaz.
 */
void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30, 40);
  m2.topla();
  m2.cikar();
  print(Matematik.Pi);
  Matematik.sinifAdiniSoyle();

  //Burada şimdi, toplam işlem sayısını tutan bir değişkenimiz var. Bunu normal olarak tanımladık ve instance variable oldu. Yani nesne üretip kullanabiliyoruz. Ama tek nesne üzerinde kullanabiliyoruz. Yani bir nesne ürettik m1 diye. Sdece m1 ile olan işlemleri sayıyor. Ama static tanımlarsak sınıf üzerinden ulaştığımız için hepsiyle birlikte sayıyor. Çünkü her bir nesnede 0 lanır. İstersen 70 tne oluştur yine böyle toplam değerini tutar.
  //print("Toplam işlem sayisi ${m1.toplamIslemSayisi}");
  print("Toplam işlem sayisi ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  //instance variable, yani kullanmamız için nesne üretmemiz lazım.
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;

  //artık instance variable değil, class variable oluyor. Artık buna erişmek için nesne üretmemize gerek yok. Direkt yazdırabiliriz. Bellekte özgün şekilde tutuluyor. m1 bir nesneyi gösterirken bellekte, m2 diğer nesneyi görteriyor 30 10 şeklinde. Static ise bambaşka yerde tutulur.
  static double Pi = 3.14;
  //aynı şekilde metodda tanımlayabiliyoruz. Ve static sınıflarda normal değişkenlere erişemiyoruz.  Ama normal bir metodda static fonksiyonlara erişebiliyoruz.
  static sinifAdiniSoyle() {
    print("Ben matematik Sınıfıyım");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemSayisi++;
    print("Tolam ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Tolam ${birinciSayi - ikinciSayi}");
  }
}
