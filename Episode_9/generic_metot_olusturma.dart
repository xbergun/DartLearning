import 'dart:ffi';

void main(List<String> args) {
  double intOrtalama = ortalamaBul<int>(5, 3);
  double doubleOrtalama = ortalamaBul<double>(5, 6);
  print("Ortalama $doubleOrtalama");
}

double ortalamaBul<T extends num>(T s1,T s2) {
  return (s1 + s2) / 2;
}
