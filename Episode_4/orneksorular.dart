import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // 1- sehirleri tutan bir liste oluşturun. 4 tane il ekleyip sırasıyla ekrana yazdırın.
  print("****************************");

  List<String> sehirler = [];
  sehirler.add("Bursa");
  sehirler.add("İstanbul");
  sehirler.add("Ankara");
  sehirler.add("İzmir");

  for (var sehirlerilistele in sehirler) {
    print(sehirlerilistele);
  }

// 2- Keyleri String, değerleri dynmaic olan bir map oluşturun. Bu map bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadığını ekrana yazsın.
  print("****************************************");

  Map<String, dynamic> pcbilgileri = {"islemci": 6, "ram": 8, "ssdVarMi": true};

  for (var item in pcbilgileri.entries) {
    print("Bilgisayar keyleri: ${item.key}, valueleri: ${item.value}");
  }

// *3- Her bir elemanında keyleri string, valueleri dynamic map olan bir liste oluşturun. Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında bu listeyi okunaklı bir şekilde yazdırın.
  print("***************************");
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> ekleneceksehirler1 = Map<String, dynamic>();
  ekleneceksehirler1["il_adi"] = "ankara";
  ekleneceksehirler1["ilce_sayisi"] = 10;
  ekleneceksehirler1["plaka_kodu"] = 06;

  Map<String, dynamic> ekleneceksehirler2 = <String, dynamic>{};
  ekleneceksehirler2["il_adi"] = "bursa";
  ekleneceksehirler2["ilce_sayisi"] = 15;
  ekleneceksehirler2["plaka_kodu"] = 16;

  var ekleneceksehirler3 = <String, dynamic>{}; // diğer kullanımı
  ekleneceksehirler3["il_adi"] = "istanbul";
  ekleneceksehirler3["ilce_sayisi"] = 22;
  ekleneceksehirler3["plaka_kodu"] = 34;

  iller.add(ekleneceksehirler1);
  iller.add(ekleneceksehirler2);
  iller.add(ekleneceksehirler3);

  iller.add({
    //en kısa yolu, farkı üsttekilerle işlem yapabilirsin ancak bunda yapamazsın
    "il_adi": "izmir",
    "ilce_sayisi": 14,
    "plaka_kodu": 35,
  });

  print(iller[0]["il_adi"]);

  for (var i = 0; i < iller.length; i++) {
    print(iller[i]["ilce_sayisi"]);
  }

//4- 5 elemanlı iki farklı liste oluşturun. Elemanlar 0-50 ye rastgele şekilde oluşturulsun. Bu elemanları tek bir listeye aktarın oluşan son lsitenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın

  print("************************");
  List<int> list1 = List.filled(5, 0);
  var list2 = List.filled(5, 0);

  for (var i = 0; i < list1.length; i++) {
    list1[i] = Random().nextInt(50);
    list2[i] = Random().nextInt(50);
  }

  List<int> listetutan = [];

  listetutan = [...list1, ...list2];
  print(listetutan);

  Set<int> sonSetYapisi = <int>{};

  for (int gecici in listetutan) {
    sonSetYapisi.add(gecici * gecici);
  }
  print(sonSetYapisi);

  // kullanıcıdan aldığınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırsın.

  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];
  do {
    print("Lütfen notunuzu giriniz, çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("Kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = listedekiElemanlarinToplamaniBul(girilenNotlar);

  print("Notların Ortalaması: $ortalama");
}

double listedekiElemanlarinToplamaniBul(List<int> Liste) {
  int toplam = 0;
  for (var i = 0; i < Liste.length; i++) {
    toplam = toplam + Liste[i];
  }
  return toplam / Liste.length;
}
