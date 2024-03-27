import 'package:flutter/material.dart';
import 'package:flutter_application_1/Second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'), // Corrected typo here
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(data: 'Data dari Home Page'),
                  ),
                );
              },
              child: const Text('Menuju Halaman Kedua'),
            ),

            // Second Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second_page', arguments: 'Menggunakan routes');
                // Corrected route name typo and wrapped string in quotes
              },
              child: const Text('Menuju halaman kedua dengan route'),
            ),
          ],
        ),
      ),
    );
  }
}
