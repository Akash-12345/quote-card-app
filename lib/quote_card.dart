import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 10.0),
            Text(quote.author,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[800])),
            SizedBox(height: 10.0),
            FloatingActionButton(onPressed:delete(),
              backgroundColor: Colors.green,
              child: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
