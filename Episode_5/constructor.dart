/**
 * KURUCU METHODLAR - CONSTRUCTORS
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri
 * kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
 * 
 * Farklı türde kurucu olusturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.
 * 
 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *    Ogrenci emre=new Ogrenci("emre");
 * 
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 * 
 *  3- Named (Isimlendirilmiş) : Sınıf içerisinde 
 *    SinifAdi.methodAdi(){
 *    buraya kodlar gelir.
 * }
 *   //Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz. 
 * 
 * 
 */
void main(List<String> args) {
  var honda = Araba("Honda", 199, true);

  honda.bilgileriSoyle();

  Araba bmw = Araba('bmw', 2020, false);
  bmw.yasHesapla();
  bmw.bilgileriSoyle();

  var citroen = Araba.markasizKurucuMetot(true, 1999);
  citroen.bilgileriSoyle();
  citroen.yasHesapla();

  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");
  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

//************************************************************************* */

//parametre ismi aynı olursa, this kullanmalıyız. Ama farklı parametre ismi verirsek, gerek kalmıyor.
  Araba(String _marka, int _modelYili, bool _otomatikMi) {
    marka = _marka;
    this.modelYili = _modelYili;
    this.otomatikMi = _otomatikMi;
  }

  //default constructor 1 defa tanımlayabiliriz. Ancak bu şekilde istediğimiz kadar tanımlayabiliriz.

  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);

  Araba.modelYiliOlmayanKurucuMetot(bool _otomatikMi, String _marka) {
    otomatikMi = _otomatikMi;
    marka = _marka;
  }

  void bilgileriSoyle() {
    print(
        "Arabanın model yili ${modelYili}, markasi $marka, otomatik mi ? $otomatikMi");
  }

  void yasHesapla() {
    if (modelYili != null) {
      print("Arabanın yaşı ${2021 - modelYili!}");
    } else {
      print("Model Yili Olmadığından yaş hesaplanamadi");
    }
  }
}
