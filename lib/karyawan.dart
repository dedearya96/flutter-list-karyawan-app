class Karyawan {
  String id;
  String nama_pegawai;
  String jenis_kelamin;
  String pendidikan;
  String alamat;
  String agama;
  String telepon;
  String keahlian;
  String umur;
  Karyawan(
      String id,
      String nama_pegawai,
      String jenis_kelamin,
      String pendidikan,
      String alamat,
      String agama,
      String telepon,
      String keahlian,
      String umur) {
    this.id = id;
    this.nama_pegawai = nama_pegawai;
    this.jenis_kelamin = jenis_kelamin;
    this.pendidikan = pendidikan;
    this.alamat = alamat;
    this.agama = agama;
    this.telepon = telepon;
    this.keahlian = keahlian;
    this.umur = umur;
  }

  Karyawan.fromJson(Map json)
      : id = json['id'],
        nama_pegawai = json['nama_pegawai'],
        jenis_kelamin = json['jenis_kelamin'],
        pendidikan = json['pendidikan'],
        alamat = json['alamat'],
        agama = json['agama'],
        telepon = json['telepon'],
        keahlian = json['keahlian'],
        umur = json['umur'];

  Map toJson() {
    return {
      'id': id,
      'nama_pegawai': nama_pegawai,
      'jenis_kelamin': jenis_kelamin,
      'pendidikan': pendidikan,
      'alamat': alamat,
      'agama': agama,
      'telepon': telepon,
      'keahlian': keahlian,
      'umur': umur
    };
  }
}
