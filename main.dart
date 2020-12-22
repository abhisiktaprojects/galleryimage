import 'package:flutter/material.dart';
import 'package:galleryimage_app/firstscreen.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: firstscreen(),);
  }
}
