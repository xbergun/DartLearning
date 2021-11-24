void main(List<String> args) {
  List<int> sayilar = [10, 5, 4, 3, 11, 0, 15];

  if (sayilar.isNotEmpty) {
    print(sayilar.first); // ilk elemanı yazdır.
    print(sayilar.last); // son elemanı yazdır.

  }
  print("Boş mu " + sayilar.isEmpty.toString()); //Liste boş mu boolean yollar.

  print("Ters Sırada ${sayilar.reversed}");
  //sabit boyutlularda çalışmaz.
  sayilar.add(23);
  print(sayilar);
  sayilar.remove(3); // verilen eleman
  print(sayilar);
  sayilar.removeAt(1); //indexli
  print(sayilar);

  //sayilar.clear(); temizler

  if (sayilar.contains(9)) {
    print("Listede 9 var");
  } else {
    print("listede 9 yok.");
  }
  print(sayilar);

  print(sayilar.elementAt(2)); //2. indexi verir
  print(sayilar.indexOf(11)); // 11 in indexini ver.

  sayilar.shuffle(); // yerlerini random değiştirir.
  print("*****" + sayilar.toString());
}
