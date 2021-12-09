void main(List<String> args) {
  try {
    Ogrenci berkay = Ogrenci(-5);
    print(berkay.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  }
}

class AgeException implements Exception {
  String mesaj = "";
  AgeException({this.mesaj = "AgeException"});

  @override
  String toString() {
    return "Hatanin tostring metodu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;

  //bu sınıfta, böyle yapınca hata geri dönüyor ve 0 olarak default değer yazıyor. Ama ben bunu istemiyorum. Ben hata çıkınca kullanıcıyı bilgilendirmek istiyorum. O yüzden exception class lar kullanıyoruz. Buradaki önemli noktalardan biride, böyle yapmazsak her türlü öğrenci nesnesi oluşturuluyordu, artık oluşturmuyor direkt hata fırlatıyor.
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: "Ageexception, yaş negatif olamaz");
    } else {
      this.yas = yas;
    }
  }
}
