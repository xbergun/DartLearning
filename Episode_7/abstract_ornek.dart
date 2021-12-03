/*Farzedelim ki, bir flutter uygulamasında veritabanı işlemleri yapıyoruz. Bunu da firebase ile yapıyoruz. Class kullanmadan her yere yazdık. Ama sonra değiştirmek istedik. Ne olacak ? */
void main(List<String> args) {
  //abstact sınıftan türebilirsiniz. Çünkü o polymorfism konularıan denk geliyor. Böylesi daha mantıklı.
  //İleride değişiklik olursa tek değiştirmemiz gereken yer burası olur.
  //Veritabani oracle = OracleDB();
  Veritabani db = FirebaseDB();

  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  //bunları dolduramam, henüz veritabanına karar vermeemiş olabilirim. firebase mi mongodb mi belli değil. O yüzden sınıfınızda 1 tane dolduralamayan fonk varsa bu abstract olmalı. Bunu soyut bir örneğe dönüştürelim.
  void userSave();
  void userUpdate();
  void userDelete();

  void urunGuncelle();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("OracleDB den user silindi.");
  }

  @override
  void userSave() {
    print("OracleDB den user kaydedildi.");
  }

  @override
  void userUpdate() {
    print("OracleDB den user gümcellendi.");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("FirebaseDB den user silindi.");
  }

  @override
  void userSave() {
    print("FirebaseDB den user kaydedildşi.");
  }

  @override
  void userUpdate() {
    print("FirebaseDB den user güncellendi.");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}
