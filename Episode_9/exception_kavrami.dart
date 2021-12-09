void main(List<String> args) {
  print("Program Başladı");

  //burada 6 ya böldük ama hata veriyor çünkü double sonuç ve int tanımladık. Bunu önlemek için ~ koyuyoruz, bu da bana sadece int tarafını ver demek. Ama 0 a bölüm tanımsızdır. Bu da hataya sebep olur Bunu da try catch ile çözeceğiz.
  //ve hataya göre de farklı sonuçlar yazdırabiliriz. Aşağıda on diyip hata ismini yazıyoruz. Bu şu demek, çalıştır, bu hata çıktığında bu bloğa gir.

  try {
    int sayi = 100 ~/ int.parse("berkay");
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen sıfır olamaz");
  } on FormatException catch (e) {
    print(e);
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata Çıktı ${e}");
  } finally {
    //finally hata çıksın çıkmasın yazar.
    print("İşlem bitti");
  }

  print("Program Bitti");
}
