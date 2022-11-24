import 'package:flutter/material.dart';
import '../main.dart';
import '../drawer.dart';
import 'data_budget.dart';

class TambahBudgetPage extends StatefulWidget {
  const TambahBudgetPage({super.key});

  //simpan data budget dalam list daftar_budget
  static List<DataBudget> daftar_budget = [];

  static void add({
    required judul,
    required nominal,
    required jenis,
    required date,
  }) {
    //simpan variabel dalam daftar_budget
    daftar_budget.add(
        DataBudget(judul: judul, nominal: nominal, jenis: jenis, date: date));
  }

  @override
  State<TambahBudgetPage> createState() => _TambahBudgetPageState();
}

//DataBudget
class DataBudget {
  String judul;
  String nominal;
  String jenis;
  DateTime date;

  DataBudget({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.date,
  });
}

class _TambahBudgetPageState extends State<TambahBudgetPage> {
  final _formKey = GlobalKey<FormState>();
  String _judulBudget = "";
  String _nominalBudget = "";
  String _jenisBudget = "";
  DateTime _date = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      drawer: buildDrawer(context),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [

            //1. Judul
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: Beli Sate Pacil",
                    labelText: "Judul",
                    // Menambahkan circular border agar lebih rapi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? value) {
                    setState(() {
                      _judulBudget = value!;
                    });
                  },
                  // Menambahkan behavior saat data disimpan
                  onSaved: (String? value) {
                    setState(() {
                      _judulBudget = value!;
                    });
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Judul tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),

            //2. Nominal
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: 50000",
                    labelText: "Nominal",
                    // Menambahkan circular border agar lebih rapi
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? value) {
                    setState(() {
                      _nominalBudget = value!;
                    });
                  },
                  // Menambahkan behavior saat data disimpan
                  onSaved: (String? value) {
                    setState(() {
                      _nominalBudget = value!;
                    });
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              
              //3.Jenis
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: null,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  underline: Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 2.0, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                  ),
                  hint: Text(_jenisBudget == '' ? 'Pilih jenis' : _jenisBudget),
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: 'Pengeluaran',
                      child: Text('Pengeluaran'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Pemasukan',
                      child: Text('Pemasukan'),
                    ),
                  ],
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? value) {
                    setState(() {
                      _jenisBudget = value!;
                    });
                  },
                ),
              ),

              //4. Date
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.calendar_month_outlined),
                    const SizedBox(width: 5.0),
                    TextButton(
                      onPressed: (() {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2022),
                          lastDate: DateTime(2030),
                        );
                      }),
                      child: Text(_date.toString().split(' ')[0]),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),

              //5.Simpan
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),

                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      child: const Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          TambahBudgetPage.add(
                              judul: _judulBudget,
                              nominal: _nominalBudget,
                              jenis: _jenisBudget,
                              date: _date);
                        }
                        _formKey.currentState!.reset();
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}