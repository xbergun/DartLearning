/**
 * Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine
 * buyuyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz gerekmez.
 * 
 * Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 * add eleman ekler, 
 * clear tüm elemanları siler, 
 * remove verilen elemanı siler,
 * removeAt belirtilen indextekielemanı siler
 * Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebilirz.
 */

void main(List<String> args) {
  // [] böyle koyduğumuzda büyüyen lsite oluyor ve eleman ekleyip değiştirebiliriz.

  List<int?> sayilar = [];
  //sayilar[1]; hata verir çünkü sabitte bu kullanılır. Dinamik dizilerde add kullanılır.
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  print(sayilar);
  print(sayilar.length);
  //sayilar.length=100;
  //BURADA length değiştirebiliyoruz ancak null olabilceğinden hata verir. ama soru işareti koyarsak olur.
  print("***************");

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

//sabit uzunluklu dizilerdeki gibi filled ile oluşturabiliriz.
// Ancak growable true vererek büyüyebiliri aktif ediyoruz.

  List<int> sayilar3 = List.filled(5, 0, growable: true);
  sayilar3.add(5454);
  print(sayilar3);


//İkiside tamamen aynı
  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
}
