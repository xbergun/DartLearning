/**
 * lAMBDA : İSMİ OLMAYAN FOnksiyonlardır. Dartta her fonksiyon aslında bir nesnedir. Dartta her şey bir nesnedir.
 */

void main(List<String> args) {
  var fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };

  fonksiyon1(3, 5);

  String isim = "Emre";

  //hiçbir farkı yok fatarrow sayesinde return ve parantezlerden kurtulmuş oluyoruz. Bunları kullanabilmek için değişkene atamamız lazım.
  var f2 = (int s) => s * 2;
  var f3 = (int s2) {
    return s2 * 2;
  };
  var sayi = f2(5);
  print(f3(5));
  print(sayi);
}

//normal bir fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
