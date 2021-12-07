void main(List<String> args) {
  Map<String, dynamic> map1 = Map();
  var map2 = <String, dynamic>{};

  map1['id'] = 5;
  map1['isim'] = "berkay";
  map1['renk'] = "yeşil";

//yeni map oluşturduk ve ilk değerini verdik.
  var yeniMap = Map.from({"deger": "yeni"});
  var mapFromEntries = Map.fromEntries(map1.entries);

  print(mapFromEntries);

  var liste = [1, 2, 3, 4];
  //artık keylere ve valuelere müdahale edebiliyoruz.
  var mapFromIterable = Map<String, String>.fromIterable(liste,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 2}");
  print(mapFromIterable);

  //günceller, eğer yoksa ifabsent ile yeni oluşturuyor.
  map1.update("id_yeni", (value) => value * 3, ifAbsent: () => 100);
  print(map1);

  //eğer yoska bunu ekle demek.
  map1.putIfAbsent("soyisim", () => "altunbilek");
  print(map1);
}
