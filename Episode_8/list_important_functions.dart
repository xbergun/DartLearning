void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(7, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali];

 
  

  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));

  //ıterable istiyor. Iterable, elemanları ard arda okunan yapılardır. Mesela listeler ve setler.
  var listeFrom = List.from(tumOgrenciler);
  var listeOf = List<Ogrenci>.of(tumOgrenciler.whereType<
      Ogrenci>()); //burda ogrenci tipinden dediğimiz için yalnız ogrenci tipinden veri istiyor. Bu yüzden listeof daha güvenli diyebiliriz. Burda da tüm elemanları gez. Bana ogrenci olanlarla list eoluştur diyebiliyoruz.

  var degistirilemezListe = List.unmodifiable([0, 1, 2]);
  //degistirilemezListe.add(5); ekleyemezsin.
  print(degistirilemezListe.reversed); //ters sırada
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
    return "id:$id ve isim. $isim ve alinan ders sayisi: $alinanDersSayisi";
  }
}
