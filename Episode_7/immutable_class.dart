void main(List<String> args) {
  const Student berkay = Student(5, "berkay");
  final Student berkay2 = const Student(5, "berkay");
  var berkay3 = const Student(5,
      "berkay"); //var da yeni bir değer atanabilir. Bu sefer farklı alanı gösterir bellekte. Ama gidip onunda const dersek eşit olur.
  berkay3 = const Student(5, "berkay");

  //berkay = Student(6,
  //    "kübra"); //böylede değişiyor Çünkü biz bunları final tanımlamadık. Amaç nedir? aynı değeri gösteriyosa biz niye 2 tane yer tutalım ki bellekte? Bu oldukça performans kaybına neden olacaktır. Bu nedenle constructora const ekliyoruz. Şimdi siz aynı değerlere ait 50 tane const oluştur, hepsi aynı yeri gösterecek 1 tane alan oluşacak.

  if (berkay == berkay3 && berkay2 == berkay3) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }
}

class Student {
  //final, bir kere atanır sonra değişmez anlamına gelir.Biz programlarımızı oluşturup sonradan değiştirilemez şeklinde oluşturmamız gerek. Bu hem güvenlik hem hız  önemlidir.
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
