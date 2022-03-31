import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AudioCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function pushDestination;
  const AudioCard({Key key, this.title, this.subtitle, this.pushDestination}) : super(key: key);

  @override //build followed by method calls in order
  Widget build(BuildContext context) {

    final middleMediaQuery = MediaQuery.of(context).size.height*.1;
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      height: middleMediaQuery,
      width: middleMediaQuery,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: ListTile(
        leading: Icon(Icons.all_inclusive, size: 50.0, color: Colors.orange,),
        title: Text(title, style: TextStyle(fontSize: 20.0),),
        subtitle: Text(subtitle, style: TextStyle(fontSize: 16.0),),
        onTap: pushDestination,
      ),
    ),);
  }
}
