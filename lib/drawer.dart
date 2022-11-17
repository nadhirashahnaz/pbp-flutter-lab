import 'package:flutter/material.dart';
import 'main.dart';
import 'tambah_budget.dart';
import 'data_budget.dart';

//buildDrawer menampilkan drawer
Drawer buildDrawer(BuildContext context) {
  String? route = ModalRoute.of(context)?.settings.name;

  return Drawer(
    child: Column(
          children: [

            //1. drawer counter
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),

            //2. drawer tambah budget
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const TambahBudgetPage()),
                );
              },
            ),

            //3. drawer data budget
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DataBudgetPage()),
                );
              },
            ),
          ],
        ),
  );
}