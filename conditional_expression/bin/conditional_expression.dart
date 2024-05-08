import 'dart:io';

void main() {
  greetNewUser(false, "aon");
}

void lat1() {
  var openH = 8;
  var closedH = 21;
  var now = 22;
  var shopStatus = now > openH && now < closedH
      ? "Hello, we're open"
      : "Sorry, we've closed";
  print(shopStatus);
}

void lat2() {
  stdout.write("Input Angka : ");
  int angka = int.parse(stdin.readLineSync()!);
  var jenisAngka = angka > 0 ? "Positif" : (angka < 0 ? "Negatif" : "No");
  print("Angka $angka adalah $jenisAngka");
}

void evenOdd() {
  stdout.write("Inputkan Angka : ");
  int angka = int.parse(stdin.readLineSync()!);
  var hasil = angka % 2 == 1 ? "Ganjil" : (angka == 0 ? "NOL" : "Genap");
  print("Angka $angka adalah $hasil");
}

void lingkaran() {
  stdout.write("Inputkan Angka : ");
  double angka = double.parse(stdin.readLineSync()!);
  print(luasLingkaran(angka));
}

double luasLingkaran(double radius) => 3.14 * (radius * radius);

void greetNewUser(bool isVerified, [String? name, int? age]) {
  print(name);
  print(age);
  if (isVerified) {
    print("User terverifikasi");
  } else {
    print("User belum terverifikasi");
  }
  print("---" * 10);
}
