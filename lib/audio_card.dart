import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AudioCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function pushDestination;

  const AudioCard({Key key, this.title, this.subtitle, this.pushDestination})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      padding: EdgeInsets.all(1),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: ListTile(
          leading: Icon(
            Icons.all_inclusive,
            size: 60.0,
            color: Colors.orange,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 22.0),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 18.0),
          ),
          onTap: pushDestination,
        ),
      ),
    );
  }
}
