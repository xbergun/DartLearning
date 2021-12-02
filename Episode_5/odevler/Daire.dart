class Daire {
  int _yaricap = 1;
  double _pi = 3.14;

  Daire(int _yaricap) {
    _yariCapKontrol = _yaricap;
  }

  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else {
      _yaricap = 1;
    }
  }

  double alanHesapla() {
    return _pi * _yaricap * _yaricap;
  }

  double cevreHesapla() {
    return 2 * _pi * _yaricap;
  }
}
