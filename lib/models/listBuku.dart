part of 'models.dart';

List<ListBuku> listBukuFromJson(String str) => List<ListBuku>.from(json.decode(str).map((x) => ListBuku.fromJson(x)));

String listBukuToJson(List<ListBuku> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListBuku {
    ListBuku({
        this.id,
        this.sampulBuku,
        this.namaBuku,
        this.halamanBuku,
        this.penulisBuku,
        this.terbitBuku,
        this.isiBuku,
        this.deskripsiBuku,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String sampulBuku;
    String namaBuku;
    int halamanBuku;
    String penulisBuku;
    String terbitBuku;
    String isiBuku;
    String deskripsiBuku;
    DateTime createdAt;
    DateTime updatedAt;

    factory ListBuku.fromJson(Map<String, dynamic> json) => ListBuku(
        id: json["id"],
        sampulBuku: json["sampul_buku"],
        namaBuku: json["nama_buku"],
        halamanBuku: json["halaman_buku"],
        penulisBuku: json["penulis_buku"],
        terbitBuku: json["terbit_buku"],
        isiBuku: json["isi_buku"],
        deskripsiBuku: json["deskripsi_buku"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sampul_buku": sampulBuku,
        "nama_buku": namaBuku,
        "halaman_buku": halamanBuku,
        "penulis_buku": penulisBuku,
        "terbit_buku": terbitBuku,
        "isi_buku": isiBuku,
        "deskripsi_buku": deskripsiBuku,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}