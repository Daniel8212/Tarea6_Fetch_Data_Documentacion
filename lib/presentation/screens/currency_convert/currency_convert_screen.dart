import 'package:flutter/material.dart';
import 'package:flutter_currency_convert/presentation/screens/currency_convert/widgets/form_converter.dart';

class CurrencyConvertScreen extends StatelessWidget {
  const CurrencyConvertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
      ),
      body: const DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.attach_money),
                ),
                Tab(
                  icon: Icon(Icons.euro),
                ),
                Tab(icon: Icon(Icons.currency_bitcoin)),
                Tab(icon: Icon(Icons.currency_ruble))
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  FormConverter(currency: 'USD'),
                  FormConverter(currency: 'EURO'),
                  FormConverter(currency: 'BITCOIN'),
                  FormConverter(currency: 'RUBLE'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
