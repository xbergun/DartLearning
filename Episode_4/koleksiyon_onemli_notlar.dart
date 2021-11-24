void main(List<String> args) {
  var listem = <String>[];

  //Süslü parantez kullananlar set ve maplar ancak içine değer girince set olur. Map da key value vardır.
  var mySet = <String>{"Emre"};
  var mySet2 = <String, dynamic>{"yas": 34}; // Map 'e dönüştü.

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

//tek bir liste altında birleştirdik.
  var sonListe = [];
  // sonListe.addAll(tekSayilar);
  // sonListe.addAll(ciftSayilar);
  // print(sonListe);

  // Daha kısa yol ise;
  //spreads operator geliyor.

  sonListe = [tekSayilar, ciftSayilar];
  print(
      sonListe); // böyle dizi içinde dizi yapıyor 1. indexe tek , 2. indexse cift sayiları atıyor.

  //ancak spread kullanırsak tek liste olur

  sonListe = [...tekSayilar, ...ciftSayilar];
  print(sonListe);
  //Spread, sonliste diye bir liste oluşturulacak buna teksayilar diye bir listenin elemanları, ciftsayilar diye bir listenin elemanları atanacak.

  var map1 = {"ad": "emre"};
  var map2 = {"yas": 34};

  var sonMap = {...map1, ...map2};
  print(sonMap);

  var set1 = {"hasan"};
  var set2 = {"emre"};
  var set3 = {"ayse"};
  var set4 = {"emre"};

  var sonSetyapisi = {...set1, ...set2, ...set3, ...set4};

  print(sonSetyapisi);
}
