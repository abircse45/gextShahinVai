import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  
    final String title;

  const Detail({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

              Text(title),
              Text("$title $title"),
          ],
        ),
      ),
      
    );
  }
}