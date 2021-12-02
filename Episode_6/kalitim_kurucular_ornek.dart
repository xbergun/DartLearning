void main(List<String> args) {
  Kisi emre = Kisi("Emre", 34);
  emre.kendiniTanit();

  Calisan berkay = Calisan("berkay", 22, 3000);
  berkay.kendiniTanit();
}

class Kisi {
  String isim = "";
  int yas = 0;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adim $isim, yasşım ise $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String isim, int yas, this.maas) : super(isim, yas);

  @override
  void kendiniTanit() {
    // TODO: implement kendiniTanit
    print("Benim adim $isim, yaşımda $yas ve maaşım $maas" );
  }
}
