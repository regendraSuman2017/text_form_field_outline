<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TextFormFieldOutline is a library for adding a beautiful Text Form Field with Outline border feature.

You can use a pre-defined TextFormFieldOutline or make a fully customized TextFormField with Outline border.

know whether this package might be useful for them.

## Installation
1. Add the latest version of  package to your pubspec.yaml (and run 'dart pub get')
   ``yaml``
   dependancies:
        text_form_field_outline: ^0.0.1

2. Import the package and use it in your  Flutter app.
   import 'package:text_form_field_outline/text_form_field_outline.dart';
<hr>

## Features

* Default Border around textformField
* change border color
* change border radius

## Getting started



```dart
import 'package:flutter/material.dart';
import 'package:text_form_field_outline/text_form_field_outline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Form Field Outline',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Text Form Field Outline'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: TextFormFieldOutline(),
      ),

    );
  }
}


```
<tr>
<img src="https://github.com/regendraSuman2017/text_form_field_outline/blob/main/screenshot/Screenshot_.jpg"/>
</tr>

## Image
![Screenshot_2024-01-18-12-41-46-376_com.example.example.jpg](..%2F..%2FDownloads%2FScreenshot_2024-01-18-12-41-46-376_com.example.example.jpg)
