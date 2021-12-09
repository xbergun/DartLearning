import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-20);
    print("deger ${deger.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    //catch e çok genel bir yakalama olayı. Eğer message ve source ye ulaşmak istiyorsak, on diyip hatayı yazmamız gereklli.
    print(e);
    print(e.message);
    print(e.source);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  if (i < 10) {
    throw FormatException(
        "Sayı negatif Olamaz"); //hatayı fırlattıktan sonra hiçbir şekilde aşağıya gitmez program. Peki bunu nerde yakalıcaz? İlk olarak program kendi fonksiyonuna bakar. Var mı yok. O zaman çağrıldığı yere bakar.
  } else {
    return sqrt(i);
  }
}
