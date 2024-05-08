/*
NIM: 211351068
NAMA: IRGIYANSYAH 
*/
import 'mahasiswa.dart';

void main() {
  var mhs = new mhsIF('Irgiyansyah', 211351068, 089506630849, 90, 100);
  mhs.hitungGrade();
  mhs.membaca("Algoritma Pemrograman");
}

class mhsIF extends mahasiswa {
  double nilaiUTS = 0;
  double nilaiUAS = 0;
  String grade = '';

  mhsIF(super.nama, super.nim, super.telp, this.nilaiUTS, this.nilaiUAS);

  void hitungGrade() {
    double nilai = (0.4 * nilaiUTS) + (0.6 * nilaiUAS);
    if (nilai >= 85)
      grade = 'A';
    else if (nilai >= 75)
      grade = 'B';
    else if (nilai >= 55)
      grade = 'C';
    else if (nilai > 40)
      grade = 'D';
    else
      grade = 'E';
    print("Grade mahasiswa adalah $grade");
  }
}
