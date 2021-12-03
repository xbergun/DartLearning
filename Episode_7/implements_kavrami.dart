/**
 * Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
 * Interfaceler sayesinde ortak ozelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
 * 
 * Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
 * Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.
 * 
 */

void main(List<String> args) {}

abstract class Hayvan {
  void soyutOlmayanMetot() {
    print("Metotun tanımı");
  }
}

abstract class Ucabilenler {
  void fly();
  void test() {
    print("Test");
  }
}

abstract class Haylayabilenler {
  void bark();
}

abstract class kosabilenler {
  void run();
}
//yani sınıfınız birden fazla sınıftaki özelliği kullanmak istiyorsa implements yazabiliriz. Mesela köpek havlayabilir ama koşadabilir. İkisini de alabilir. O yüzden multiinheritence olmadığı için dartta böyle yapmak zorundayız.

class Kopek extends Hayvan implements Haylayabilenler, kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
}

class Insan implements kosabilenler {
  @override
  void run() {
    // TODO: implement run
  }
}
