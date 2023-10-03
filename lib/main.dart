
import 'package:flutter/material.dart';
import 'package:listview/lists.dart';
import 'package:listview/provider/provider_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Provider_class(),

    child: MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),

      home: const Lists(),
    )));
  }


