import 'dart:math';

class VeritabaniIslemleri {
  // başına _ eklersek private olur. Ancak aynı dosyadaysa çalışır. Farklı dosyaya almak lazım.
  String _kullaniciAdi = "Berkay";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "Berkay" && _sifre == "123456") {
        return true;
      } else
        return false;
    } else {
      return false;
    }
  }
  VeritabaniIslemleri(){}
  VeritabaniIslemleri.loginWithNameandPassword(String kullaniciAdi, String Sifre){

  }

  bool _internetVarMi() { //private yaptık. 
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
