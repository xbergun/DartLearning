/**
 * Hihder order functions: bir fonksiyonu parametre olarak alan veya geriye fonksyion döndüren fonksiyonladır.
 * Tabi ikisi aynı anda da ypılabilir. Genelde bu fonksiyonlara callback fonksiyon denir.
 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  // liste.forEach((element) {
  //   print("Element: ${element}");
  // });

  liste.forEach(callback);

  kendiForEachYapim(liste, (int deger, int index) {
    print("değer ${deger} ve indexi $index");
  });
}

void kendiForEachYapim(List<int> Liste, Function callback) {
  for (int i = 0; i < Liste.length; i++) {
    callback(Liste[i], i);
  }
}

void callback(int element) {
  print("Element ${element}");
}
