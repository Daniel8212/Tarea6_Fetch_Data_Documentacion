import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to $title App!'),
            const SizedBox(height: 20),
            FloatingActionButton.extended(
              onPressed: () {
                  context.push('/currency_convert');
                },
              label: const Text('Go to Currency Converter', style: TextStyle(fontSize: 10),),
              icon: const Icon(Icons.monetization_on),

            ),
          ],
        ),
        
      ),
    );
  }
}