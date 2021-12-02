/**
 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 
Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.
Extends deyimi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.
Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
Her alt sınıf süper sınıfın özelliklerini taşır.  
Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.
Kalıtımın Faydaları
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.
Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 */

void main(List<String> args) {
  User user1 = User();
  var user2 = User();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  //AdminUser user7 = User(); hata veriyor.
  User user5 = AdminUser();
  User user6 =
      SadeceOkuyabilenNormalUser(); //upcasting yukarı çevrim. Canlı örneği gelsin aklına. Canlı kedi brisith, dolaylı oolarak her british bir kedidir, her kedi bir canlıdır. Ancak her canlı bir british değildir.
  //peki bize ne faydası olacak bunun?
  //farklı veri türlerini tek bir veri altında saklayabiliyoruz. Upcasting deniyor.
  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
}

void test(User kullanici) {
  kullanici.girisYap(); //polimorfizm çok biçimlilik
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent User Giriş Yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal User Davet etti.");
  }

  @override //bu sınıfın bi üst sınıfı var, bu fonksiyon orada tanımmlı. Ancak biz bu sınıfa göre yazmak istiyoruz.
  void girisYap() {
    // TODO: implement girisYap
    print("Normal User giriş Yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece Okuyabilirim");
  }

  @override
  void girisYap() {
    // TODO: implement girisYap
    print("Sadece okuyabilen normal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayisi 20");
  }

  @override
  void girisYap() {
    // TODO: implement girisYap
    print("Admin User giriş yaptı");
  }
}
