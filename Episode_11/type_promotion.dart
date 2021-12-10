/**
 * Dart, null değer alması mümkün olmayan ama null değer alacakmış gibi belirtilen nullable tiplere, non-nullable gibi davranır buna type promotion denir.
 * Dart tip sistemi, değişkenin nerede tanımlandığını ve  nerede okunduğunu sürekli olarak analiz eder. Bir değişken null değer alacak şekilde oluşturulmuş olabilir. Ama okunmadan hemen önce null dışında bir değer atanırsa dart bunu tespit edebilir.
 */
void main(List<String> args) {
  String? mesaj ="";
}
