void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];
  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([ayse, ali]); //listeyi burda oluşturup koyduk.

//eleman sıralama şarta göre sıralanır.
  tumOgrenciler.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else
      return 0;
  });
  print(tumOgrenciler);

  //map, elemanları tek tek gez. Her bir elemanı bir şeye dönüştür. Oraya yazıyosunuz. Size iterable veriyor ve bunu list yada set e dönüştürebiliyoruz.
  var mapIterable = tumOgrenciler.map((Person e) => "Map ${e.isim}").toList();

  print(mapIterable);

  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 5);
  print(sonuc);

  Map<int, Person> yeniMap =
      tumOgrenciler.asMap(); //varolan listeyi map yapısına dönüştürüyor.
  print(yeniMap[0]!
      .isim); //null çıkabilir diye hata veriyor ! ekledik onun yüzünden.

  print(tumOgrenciler.contains("emre"));

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);
  print(sonucEvery);

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1);
  print(bulunan);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);

  @override
  String toString() {
    // TODO: implement toString
    return "id:$id ve isim. $isim";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;

  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    // TODO: implement toString
    return "id:$id ve isim. $isim ve alinan ders sayisi: $alinanDersSayisi\n";
  }
}
