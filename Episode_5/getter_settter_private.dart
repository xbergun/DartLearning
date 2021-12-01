import 'veritabani_islemleri.dart';

/**
 * Private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız.
 * Getter metotlar: sınıf dğeişkenlerini okumak için kullanılan özel fonksiyonlardır.
 * bu Metotların amacı özellikle private yani dış dümnyanın eişmine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.
 * 
 * Setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış düşyanın erişimine kapatılan değişkenlere veri atmaktır. Ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */
void main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();
  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPassword("emre2", "123");
}


// class VeritabaniIslemleri {
//   // başına _ eklersek private olur. Ancak aynı dosyadaysa çalışır. Farklı dosyaya almak lazım.
//   String _kullaniciAdi = "Berkay";
//   String _sifre = "123456";

//   bool baglan() {
//     if (_kullaniciAdi == "Berkay" && _sifre == "123456") {
//       return true;
//     } else
//       return false;
//   }
// }
