/*
Armstrong Sayı;
N haneli bir sayının basamaklarının n’inci üstlerinin toplamı, sayının kendisine eşitse, böyle sayılara Armstrong sayı denir.
Örneğin 407 = (4^3)+(0^3)+(7^3) = 64+0+343 = 407  bir armstrong sayıdır.
*/

import "dart:math";

void main() {
  armstrong(407);
  armstrong(370);
  armstrong(256);
}

void armstrong(int sayi) {
  int basamak = sayi.toString().length;
  int toplam = 0;
  int ilkSayi = sayi;

  while (ilkSayi > 0) {
    int basamakSayisi = (ilkSayi % 10);
    toplam += pow(basamakSayisi, basamak).toInt();
    ilkSayi = ilkSayi ~/ 10;
  }

  if (sayi == toplam) {
    print("$sayi sayisi Armstrong sayidir.");
  } else {
    print("$sayi sayisi Armstrong sayi degildir. \nDegeri : $toplam");
  }
}
