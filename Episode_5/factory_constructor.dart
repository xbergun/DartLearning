void main(List<String> args) {
  Ogrenci1 emre = Ogrenci1(5, "Emre");
  Ogrenci1 hasan = Ogrenci1.idsiz("Berkay");
  Ogrenci1 ayse = Ogrenci1.factoryKurucusu(-9, "Ayse");
  print(ayse.id);
}

class Ogrenci1 {
  int id = 0;
  String isim = "";

  Ogrenci1(this.id, this.isim) {
    print("Default Kurucu");
  }

  Ogrenci1.idsiz(this.isim) {
    print("İsimlendirilmiş Kurucu");
  }

  factory Ogrenci1.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci1(5, isim);
    } else
      return Ogrenci1(id, isim);
  }
}
