/**
 * switch: ard arda if -else if kullanmak yerine genellikle switch yapısı tercih edilir
 * her bir case'den sonra break denilerek switch yapısından cıkılmalıdır.
 * 
 *switch kullanırken sadece int ve string veri türleri kullanılır, boolean veya double kullanılmaz.
*/

void main(List<String> args) {
  var notDegeri = "AA";

  switch (notDegeri) {
    case "AA":
      print("Notunuz 90 ile 100 arasindadir.");
      break;
    case "BB":
      print("Notunuz 80 ile 90 arasindadir.");
      break;
    case "BA":
      print("Notunuz 70 ile 80 arasindadir.");
      break;
    default:
      {
        print("Hatali bir giriş yaptınız.");
      }
  }
}
