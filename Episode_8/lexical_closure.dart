/**
 * closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebilriiz.
 */

void main(List<String> args) {
  //bdegiskenine üstte erişemeyiz. Ancak b nin içinde üst scoplara erişelebiliriz. Buna lexical variable scope denir.

  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  }

//   var d = topla(5);
// //fonksiyon geri döndürdüğümüz için fonksiyonun tanımını yazıyoruz. Ama bunu direkt çağırdığımızda içeriğini görürüz.
//   var sonuc = d(5);
//   print(sonuc);
//   print(d);


//lexical ise burada topladan sonra bellekte silinmesi gerek. Ancak değeri tutuyor ve yeni değerle çarpıp 12 yazıyor.
  var dondurulenFonksiyon = topla(3);
  var sonuc = dondurulenFonksiyon(4);
  print(sonuc);
}

//normalde nasıl olur? void yazarız geriye değer döndürmeyen bir fonksiyon olur. İnt yazarız geriye int döndüren bir fonksiyon olur. Biz ise function yazdık yani geriye function döndürecek bir fonksiyon oluşturduk. Yani highder order function.

Function topla(int eleman) {
  // var deneme = (int deger) => deger * 2;
  //burada ise lambda functions kullandık. Yani isimlendirilmemiş fonksiyon.
  return (int deger) => eleman * deger;
}

