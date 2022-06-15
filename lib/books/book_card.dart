import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String asset;
  final Function onTap;

  const BookCard({Key key, this.title, this.author, this.asset, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 16.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 350.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 300.0,
                  child: Image(
                      fit: BoxFit.scaleDown,
                      image: AssetImage(asset)),
                ),
                ListTile(
                  title: Text(this.title, style: TextStyle(fontSize: 35.0), textAlign: TextAlign.center),
                  subtitle: Text(this.author, style: TextStyle(fontSize: 25.0), textAlign: TextAlign.center),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}