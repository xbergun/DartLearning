void main(List<String> args) {
  //Asker emre = Asker();
  Er berkay = Er("Hasan", 24); //iki kurucu da çalışıyor. İlk üst çalışır.
  berkay.selamla();

  berkay.memleketDegistir("Kastamonu");
  print(berkay.memleket);
  Asker denemeasker = Asker("mehmet", 23);
  print(denemeasker.memleket);
  berkay.selamla();
}

class Asker {
  String ad = "";
  int yas = 0;
  String memleket = "ankara";

  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştır");
  }
  void selamla() {
    print("Merhab benim adım $ad ve yasim $yas");
  }
}

class Er extends Asker {
  //askerde parametreli kurucu tanımladık. Ama türetirken bu sınıfta olmadığı için hata alıyoruz. Bunu da super ile çözüyoruz. Sen ad yaşı al askere yolla demek.
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu Çalıştı");
  }
  void memleketDegistir(String yeniMemleket) {
    super.memleket =
        yeniMemleket; //üst classtaki fieldlere erişebiliyoruz super ile.
    print("Er içindeki memleket değiştir çalıştı $memleket");
  }

  @override
  void selamla() {
    // TODO: implement selamla
    //super.selamla(); //üst sınıfın selamlasını çalıştır demek default olarak.

    print("Er sınıfındna selamlar");
  }
}

class Deneme extends Er {
  Deneme(String ad, int yas) : super(ad, yas) {
    print("Deneme sınıfının kurucusu ÇALIŞTI");
  }
}
