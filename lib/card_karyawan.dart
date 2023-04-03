import 'package:datakaryawan_mobile/detail_karyawan.dart';
import 'package:flutter/material.dart';

class CardKaryawan extends StatelessWidget {
  const CardKaryawan({super.key});

  @override
  Widget build(BuildContext context) {
    final tinggi = MediaQuery.of(context).size.height;
    final lebar = MediaQuery.of(context).size.width;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RawMaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailKaryawan()),
              );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(color: Colors.grey, width: 0.5),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.2),
                    spreadRadius: 1,
                    // blurRadius: 2,
                    offset: const Offset(1, 2),
                  )
                ]),
            width: lebar * 0.75,
            height: tinggi * 0.15,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const Icon(Icons.person),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Nama Karayawan'), Text('NIP Karyawan')],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
