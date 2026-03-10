import 'dart:io';

double hitungTotal(List<double> hargaBarang) {
  double total = 0;

  for (double harga in hargaBarang) {
    total += harga;
  }

  return total;
}

void main() {
  String nama = "Rafi Zeta Fauzan";
  String nim = "244107060120";

  double nilaiUnikNIM = 120;

  List<double> hargaBarang = [];

  print("Masukkan jumlah barang:");
  int jumlahBarang = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < jumlahBarang; i++) {
    print("Masukkan harga barang ke-${i + 1}:");
    double harga = double.parse(stdin.readLineSync()!);
    hargaBarang.add(harga);
  }

  hargaBarang.add(nilaiUnikNIM);

  double totalAwal = hitungTotal(hargaBarang);

  double diskon = 0;
  String? pesanDiskon;

  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    diskon = 0;
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  print("Nama: $nama");
  print("NIM: $nim");
  print("Total Awal: $totalAwal");
  print("Besar Diskon: $diskon");
  print("Keterangan Diskon: ${pesanDiskon!}");
  print("Total Akhir: $totalAkhir");
}