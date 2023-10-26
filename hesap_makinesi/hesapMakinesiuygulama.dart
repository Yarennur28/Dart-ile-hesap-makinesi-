import 'dart:io';
void main(List<String> args) {
  print("İşlem tipini seçiniz:");
  print("1-Toplama");
  print("2-Çikarma");
  print("3-Çarpma");
  print("4-Bölme");
  
  int secim = int.parse(stdin.readLineSync()!);
  double sayi1 = 0.0;
  double sayi2 = 0.0;

  switch(secim){
    case 1: toplama( sayi1,sayi2);
    break;
    case 2: cikarma(sayi1, sayi2);
    break;
    case 3: carpma();
    break;
    case 4: bolme(sayi1, sayi2: sayi2);
    break;
    default: print("Geçersiz secenek lütfen tekrar deneyin");
  }
  }



double toplama(double sayi1, double sayi2){
  print("Lütfen birinci sayiyi giriniz: ");
  double? sayi1 = double.parse(stdin.readLineSync()!);

  print("Lütfen ikinci sayiyi giriniz: ");
  double? sayi2 = double.parse(stdin.readLineSync()!);

  double toplam = sayi1 + sayi2;
  print("Toplam sonucu: ${toplam}");
  return toplam;
}

 cikarma(double sayi1, double sayi2){
  print("Lütfen birinci sayiyi giriniz: ");
  double? sayi1 = double.parse(stdin.readLineSync()!);

  print("Lütfen ikinci sayiyi giriniz: ");
  double? sayi2 = double.parse(stdin.readLineSync()!);

  double  fark = sayi1 - sayi2;
  print("Cikarma sonucu: ${fark}");
  return fark;
  
}

void carpma([int? sayi1, int? sayi2]){
  if(sayi1 == null || sayi2 == null){
    print("Boş değer girdiniz");
  }
  else{
    var carpim = sayi1*sayi2;
   print("Carpim sonucu : ${carpim}");
  } 
}

 void bolme(double sayi1, {required double sayi2 }){
  print("Lütfen birinci sayiyi giriniz: ");
  double? sayi1 = double.parse(stdin.readLineSync()!);

  print("Lütfen ikinci sayiyi giriniz: ");
  double? sayi2 = double.parse(stdin.readLineSync()!);

  if(sayi2 == 0){
    print("Bolme işlemi sifira bolunemez");
  }
  else{
    double bolum = sayi1 / sayi2;
    print("Bolme sonucu: ${bolum}");
  }

}
