/**
 * Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır.
 * Sürekli kullanılan koleksiyon yapıları (liste,map,set) varsayılan olarak heterojendir. Yani aynı koleksiyon yapısında farklı türde verileri saklayabilirsiniz. Ama yapmalı mısınız?
 * 
 * Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur. Compile time da hatalı veri girişi tespit edilir ve bize hatamız söylenir. Böylece runtime da çıkabilecek hataların önüne geçilir.
 * 
 * Generic tipler <> içinde belirtilir List<String> ifadesi bu listede sadece string veriler olacağı anlamı taşır. Bu listeye String dışında bir veri eklenirse daha programi çalıştırmadan hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz.
 * 
 * Genericler dartta bulunan çoğu yapıda zaten vardır. List,map , set, future, stream gibi.. Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren kod yapılarını tek bir yapıda toplayabilirsiniz.
 */

void main(List<String> args) {
  List<String> liste = [];
  liste.add("emre");


  //List<E> ==> Element,
  //Map<K> ==> Key,
  //Map<K,V> ==>Value,
  //R ==> Methodların return tipleri için

  //Ogrenci<T extends Insan>
}

