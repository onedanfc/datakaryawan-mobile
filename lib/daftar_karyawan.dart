import 'package:flutter/material.dart';
import 'package:datakaryawan_mobile/card_karyawan.dart';

class DaftarKaryawan extends StatefulWidget {
  const DaftarKaryawan({super.key});

  @override
  State<DaftarKaryawan> createState() => _DaftarKaryawanState();
}

class _DaftarKaryawanState extends State<DaftarKaryawan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF9A208C),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_left_rounded)),
        title: const Text('Daftar Karyawan'),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return const CardKaryawan();
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF9A208C),
        child: const Icon(
          Icons.summarize,
          color: Colors.white,
        ),
      ),
    );
  }
}
