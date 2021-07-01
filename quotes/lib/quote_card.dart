import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
              textAlign: TextAlign.end,
            ),
            SizedBox(height: 4.0,),
            Divider(height: 4.0,thickness: 4.0,color: Colors.grey[50],),
            TextButton.icon(
              onPressed: delete,
              label: Text(
                'Delete',
                style: TextStyle(color: Colors.grey[900]),
              ),
              icon: Icon(
              Icons.delete,
              color: Colors.grey[900],
              ),
            )
          ],
        ),
      ),
    );
  }
}