import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String asset;
  final Function onTap;

  const BookCard({Key key, this.title, this.asset, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width * .03,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20.0,
              spreadRadius: 1,
              offset: Offset(0, 10),
            )
          ]),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(asset),
                          fit: BoxFit.contain)),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}