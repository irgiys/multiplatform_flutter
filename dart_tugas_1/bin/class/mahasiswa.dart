/*
  NIM: 211351068
  NAMA: IRGIYANSYAH
*/
void main() {}

abstract class mahasiswa {
  String nama = '';
  int nim = 0;
  int telp = 0;
  mahasiswa(this.nama, this.nim, this.telp);
  void membaca(buku) {
    print('$nama sedang membaca $buku');
  }
}
