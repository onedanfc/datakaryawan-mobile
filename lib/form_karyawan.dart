import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class FromKaryawan extends StatefulWidget {
  
  const FromKaryawan({ Key? key}) : super(key: key);
  @override
  _FromKaryawanState createState() => _FromKaryawanState();
}

class _FromKaryawanState extends State<FromKaryawan> {
  final _dateController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? _imageFile;

  Future<void> _getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = pickedFile != null ? File(pickedFile.path) : null;
    });
  }
//  late String _name = '';
  // String _nip = '';
  // String _division = '';
  // String _position = '';
  // String _dobPlace = '';
  // DateTime _dobDate = DateTime.now();
  // String _phone = '';
  // String _email = '';
  // String _address = '';
  // String _photo = '';

  final List<String> divisions = [
    'Finance',
    'HR',
    'IT',
    'Sales',
    'Production',
  ];

  final List<String> positions = [
    'Staff',
    'Leader',
    'Supervisor',
    'Manager',
  ];

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }
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
          title: const Text('Form Karyawan'),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                    key: formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Nama',
                              focusColor: Color(0xffE11299),
                            ),
                            // validator: (value) {
                            //   if (value.isEmpty) {
                            //     return 'Please enter your name';
                            //   }
                            //   return null;
                            // },
                            // onSaved: (value) {
                            //   _name = value;
                            // },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(labelText: 'NIP'),
                            // validator: (value) {
                            //   if (value.isEmpty) {
                            //     return 'Please enter your NIP';
                            //   }
                            //   return null;
                            // },
                            // onSaved: (value) {
                            //   _nip = value;
                            // },
                          ),
                          DropdownButtonFormField(
                            decoration:
                                const InputDecoration(labelText: 'Divisi'),
                            items: divisions.map((division) {
                              return DropdownMenuItem(
                                value: division,
                                child: Text(division),
                              );
                            }).toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'Tolong pilih divisi anda';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                // _division = value;
                              });
                            },
                            onSaved: (value) {
                              // _division = value;
                            },
                          ),
                          DropdownButtonFormField(
                            decoration:
                                const InputDecoration(labelText: 'Jabatan'),
                            items: positions.map((position) {
                              return DropdownMenuItem(
                                value: position,
                                child: Text(position),
                              );
                            }).toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'Tolong pilih jabatan anda';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                // _position = value;
                              });
                            },
                            onSaved: (value) {
                              // _position = value;
                            },
                          ),
                          Row(children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                decoration:
                                    const InputDecoration(labelText: 'Tempat'),
                                // validator: (value) {
                                //   if (value.isEmpty) {
                                //     return 'Please enter your place of birth';
                                //   }
                                //   return null;
                                // },
                                // onSaved: (value) {
                                //   _dobPlace = value;
                                // },
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              flex: 2,
                              child: DatePickerFormField(controller: _dateController, labelText: 'Tangal Lahir')
                            )
                          ]),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'No Telp'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Email'),
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Alamat'),
                          ),
                          if (_imageFile != null) ...[
                            Image.file(
                              _imageFile!,
                              height: 200,
                            ),
                            SizedBox(height: 20),
                          ],
                          ElevatedButton(
                            onPressed: _getImage,
                            child: Text('Select Image'),
                          ),
                          // TextFormField(
                          //   decoration:
                          //       const InputDecoration(labelText: 'Foto'),
                          // ),
                          RawMaterialButton(
                            onPressed: () {
                              //           Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const DaftarKaryawan()),
                              // );
                            },
                            fillColor: const Color(0xFF9A208C),
                            elevation: 2.0,

                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            // constraints: BoxConstraints(
                            //   minWidth: lebar * 0.8,
                            //   maxWidth: lebar * 0.8,
                            // ),
                            child: const Text(
                              'Tambah',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ])))));
  }
}


//datepicker

class DatePickerFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;

  DatePickerFormField({
    required this.controller,
    required this.labelText,
  });

  @override
  _DatePickerFormFieldState createState() => _DatePickerFormFieldState();
}

class _DatePickerFormFieldState extends State<DatePickerFormField> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        widget.controller.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        suffixIcon: IconButton(
          icon: Icon(Icons.calendar_today),
          onPressed: () => _selectDate(context),
        ),
      ),
      readOnly: true,
    );
  }
}
