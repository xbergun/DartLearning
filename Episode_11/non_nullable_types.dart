import '../Episode_8/lexical_closure.dart';

int ucSayiyiTopla(
    {required int ilk, required int ikinci, required int ucuncu}) {
  return ilk + ikinci + ucuncu;
}

void main(List<String> args) {
  //soru işareti koyduğumuzda, diyoruz ki sen artık null olabilirsin. Bu da nullable oluyor.
  int? a;
  a = null;

  List<String> stringListesi = ["Emre", "Hasan", "Ali"];

  final toplam = ucSayiyiTopla(ilk: 10, ikinci: 10, ucuncu: 30);
  print(toplam); 
}


/**
 * Dart, varsayılan olarak, hiçbir değere null değeri atamamıza izin vermez. Bunlara non-nullable denir. Yani null olamayan değişkenler.
 * Darttaki isimlendirilmiş parametreler varsayılan olarak opsiyoneldir. Tanımlanması kullanıcıya bağladır. Bu yüzden kullanıcı tarafından atanmazlarsa null değer alırlar ki bu kabul edilmez. Bu yüzden parametrelerin veri tiplerini tanımlarken String?,int? gibi nullable tiplerle belirtmeliyiz.
 * 
 * Bunun dışında tüm parametrelere varsayılan değerler atanarak da sorun çözülebilir.
 * Son çözüm ise required kullanarak bu parametrelerin mutlaka girilmesi sağlanabilir.
 */

