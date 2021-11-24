/**
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 * 
 */

void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("Emre");
  isimler.add("Hasan");
  isimler.add("Ali");
  isimler.add("Emre");
  isimler.add("Emre");
  isimler.add("Fatma");

  for (String s1 in isimler) {
    print(s1);
    //sadece 4 eleman yazdı. Dizi ile farkı bu işte.
    //Diğer farkı Listeleri kullanırken ekleme sırayla gidiyordu. Burada karışık sıralanır. İndex yok o yüzden.
  }

  Set<int> numaralar = Set.from([
    1,
    2,
    3,
    4,
    1,
    23,
    2,
    12,
    3,
    1,
    23,
    2,
    1,
    23,
  ]);

  for (int s1 in numaralar) {
    print("no: $s1");
  }

  List<int> ciftsayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  numaralar.clear();
  
  numaralar.addAll(ciftsayilar);

  for (var s1 in numaralar) {
    print("Numaralar: $s1");
  }
}
