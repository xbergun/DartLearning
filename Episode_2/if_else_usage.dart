void main(List<String> args) {
  var sayi1 = 10;
  var sayi2 = 15;

  if (sayi2 < sayi1) {
    print("$sayi1 , $sayi2 den daha büyüktür");
  } else {
    print("İkisi de eşittir.");
  }

  print("*********************");
  int notDegeri = 85;
  if (90 < notDegeri) {
    print("$notDegeri puaniyla AA Aldiniz.");
  } else if (notDegeri > 80 && notDegeri < 90) {
    print("$notDegeri puaniyla BA Aldiniz.");
  } else {
    print("$notDegeri puaniyla KALDINIZ.");
  }
}
