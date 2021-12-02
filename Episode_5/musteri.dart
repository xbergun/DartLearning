class Musteri {
  int? _musteriNo;

  // Musteri(int _musteriNo) {
  //   this._musteriNo = _musteriNo;
  // }

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  String get musteriNoSoyle {
    return "Musteri No: $_musteriNo"; 
  }

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void bilgileriYazdir() {
    print("Müşteri oluşturuldu. Müşteri No: $_musteriNo");
  }
}
