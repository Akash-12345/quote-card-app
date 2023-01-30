import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotelist(),
  ));
}

class Quotelist extends StatefulWidget {
  const Quotelist({Key? key}) : super(key: key);

  @override
  State<Quotelist> createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotes = [
    Quote(
        author: 'oscar wilde',
        text: 'be yourself everyone else is already taken'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            'List data',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
