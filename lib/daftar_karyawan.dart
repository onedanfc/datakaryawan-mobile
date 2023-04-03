import 'package:datakaryawan_mobile/form_karyawan.dart';
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
        leading: const SizedBox(),
        centerTitle: true,
        backgroundColor: const Color(0xFF9A208C),
        title: const Text('Daftar Karyawan'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.outbox))
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.9,
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return const CardKaryawan();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FromKaryawan()),
          );
        },
        backgroundColor: const Color(0xFF9A208C),
        child: const Icon(
          Icons.summarize,
          color: Colors.white,
        ),
      ),
    );
  }
}
