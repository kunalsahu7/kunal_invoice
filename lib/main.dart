import 'package:flutter/material.dart';
import 'package:untitled5/Secoundpage.dart';
import 'package:untitled5/firstpage.dart';
void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>Bill(),
          'second':(context) => Billgenret(),
        },
      ),
  );
}