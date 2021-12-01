void main(List<String> args) {
  Ogrenci emre = Ogrenci(5, "Emre");
  Ogrenci hasan = Ogrenci.idsiz("Berkay");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "Ayse");
  print(ayse.id);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Default Kurucu");
  }

  Ogrenci.idsiz(this.isim) {
    print("İsimlendirilmiş Kurucu");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
