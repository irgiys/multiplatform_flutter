/*
  NIM: 211351068
  NAMA: IRGIYANSYAH
*/
import 'mhsIF.dart';

void main() {
  var mhs = new mhsIF2023("Irgiyansyah", 211351068, 089506630849, 80, 90, "Malam b");
  mhs.hitungGrade();
  mhs.membaca('');
}

class mhsIF2023 extends mhsIF {
  String kelas = '';
  mhsIF2023(super.nama, super.nim, super.telp, super.nilaiUTS, super.nilaiUAS, this.kelas);

  @override
  void membaca(buku) {
    print('mahasiswa IF mampu membaca algoritma program');
  }
}
