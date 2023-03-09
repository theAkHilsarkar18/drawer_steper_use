import 'package:drawer_steper_use/screen/homescreen/view/homescreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Homescreen(),
      },
    ),
  );
}