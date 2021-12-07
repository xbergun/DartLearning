//immutable, mean turkish  "değişmez.".
void main(List<String> args) {
  //aslında biz bunu hep kullandık. Burada str yi değiştimiz de, str değişmiş olmuyor. Bellekte, emre adında bir kutum var, Str ise referans veriyor yani gösteriyor. Adresini gösteriyor. Ama biz str altunbilek dediğimizde bellekte yeni bir alan açıyor ve str artık orayı gösteriyor. Dart ise emreyi silecek. Yani bu bir değişmezlik örneği. Farkında olmadan yapmış oluyoruz yani.
  var str = "emre";
  str = "Altunbilek";

  final String str2 = "Berkay";
  //str2 = "Ergun";  bunu yapamıyoruz yeni bir içerik atayamıyoruz.

  const String str3 = "berkay";
  //str3 = "ergun"; yine diyemiyoruz böyle.

  // const tarih = DateTime.now();
  // final tarih2 = DateTime.now();

  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];
  liste.add(4);
  //finali koleksiyon yapılarında kullandığımızda ekleme çıkarma yapabiliyoruz. Çünkü adres hala aynı yeri gösteriyor. Ama gidipte liste = [1,2] gibi yeni bir yapı oluşturamıyoruz. Buda karışıklık zamanı hata yapmayı engelliyor.
  if (liste == liste2) {
    //burada bellek adreslerini karşılaştırır gidipte içeriğe bakmaz.
    print("eşit");
  } else {
    print("Eşit Değil");
  }

  const liste3 = [1, 2, 3];
  const liste4 = [1, 2, 3];
  liste4.add(6); //finalden farkı, ekleme çıkarma yapamıyoruz. ve başka yapı atayamıyoruz. İçeriği değiştirilemez. Consta bellekte hepsi aynı yeri gösterir aynı şekilde içeriği oluşturursak. 50 kerede kullansak bellekte 1 yer tutar. Buda bize bellek dostu uygulama yapmamızı sağlayabilecek.
  //Buna canonicalized deniyor. Const çalışmadan önce değeri bilinen yapılar için kullanılıyor.
  if (liste3 == liste4) {
    //burada eşit dedi.
    print("Eşit");
  }
} 

/** Peki neden gereklidir?
 * şimdi şöyle, flutter de mesela bir widgeti 500 kere kullanııyoruz. Bunu 500 kere farklı çağırmak yerine 1 kere final yada const olarak tanımladığımızda sistem bunu 1 kere oluşturacak ve her çağırdığınızda onu okuyacak. Yani hafızadan tasarruf etmiş olacağız ve çok hızlanacak.
 * 
 * peki farkları nedir ? 
 * Const compile zamanında çalışır. Final ise runtime zamanında. 
 */