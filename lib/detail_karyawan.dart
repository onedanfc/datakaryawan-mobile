import 'package:flutter/material.dart';

class DetailKaryawan extends StatelessWidget {
  const DetailKaryawan({super.key});

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_left_rounded)),
        centerTitle: true,
        backgroundColor: const Color(0xFF9A208C),
        title: const Text('Detail Karyawan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SizedBox(
          width: lebar,
          height: tinggi * 0.6,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text('Nama :Bayu Dwi Istiyanto'),
                      Text('NIP  :3315152109960001')
                    ],
                  ),
                  Image(
                    image: const AssetImage('assets/icon/favicon.png'),
                    width: lebar * 0.3,
                    height: tinggi * 0.2,
                  ),
                ],
              ),
              const Divider(thickness: 2, color: Colors.black),
              SizedBox(
                height: tinggi * 0.01,
              ),
              Column(
                children: [
                  Row(
                    children: const[
                      Text('No.Telp'),
                      SizedBox(
                        width: 15,
                      ),
                      Text(':'),
                      Text('0895343263667')
                    ],
                  ),
                  Row(
                    children: const [
                      Text('Email'),
                      SizedBox(
                        width: 30,
                      ),
                      Text(':'),
                      Text('onedanfc@gmail.com')
                    ],
                  ),
                  Row(
                    children: const [
                      Text('Divisi'),
                      SizedBox(
                        width: 30,
                      ),
                      Text(':'),
                      Text('Finanece')
                    ],
                  ),
                  Row(
                    children: const [
                      Text('Jabatan'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(':'),
                      Text('Staff')
                    ],
                  ),
                  Row(
                    children: const [
                      Text('TTL'),
                      SizedBox(
                        width: 40,
                      ),
                      Text(':'),
                      Text('Grobogan, 21-09-1996')
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Alamat'),
                     const SizedBox(
                        width: 15,
                      ),
                     const Text(':'),
                      SizedBox(
                          width: lebar * 0.65,
                          child: const Text(
                              'dusun wandan desa wandankemiri rt:001 rw:001'))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: tinggi * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Peringatan'),
                            content: const Text(
                                'Apakah Anda yakin ingin menghapus item ini?'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Tidak'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Ya'),
                                onPressed: () {
                                  // Tambahkan kode untuk menghapus item di sini
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xFFeb0077)),
                    child: const Text('Hapus'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xFF01a3fc)),
                    child: const Text('Update'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
