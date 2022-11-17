import 'package:flutter/material.dart';
import 'main.dart';
import 'tambah_budget.dart';
import 'drawer.dart';

class DataBudgetPage extends StatelessWidget {
  const DataBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Data Budget';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
         drawer: buildDrawer(context),
        body: SingleChildScrollView(
         child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            //mapping daftar_budget
            children: TambahBudgetPage.daftar_budget.map((DataBudget o) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            o.date.toString().substring(0,16),
                            style: const TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        children: [
                          Text(
                            o.judul,
                            style: const TextStyle(fontSize: 22.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            o.nominal.toString(),
                            style: const TextStyle(fontSize: 14.0),
                          ),

                          
                          if (o.jenis.toString() == 'Pengeluaran')...[
                            Text(
                              o.jenis.toString(),
                              style: const TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ] else if (o.jenis.toString() == 'Pemasukan')...[
                            Text(
                              o.jenis.toString(),
                              style: const TextStyle(fontSize: 14.0, color: Colors.black),
                            ),
                          ]
                          
                        ],
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
         ),
        ),
      ),
    );
  }
}