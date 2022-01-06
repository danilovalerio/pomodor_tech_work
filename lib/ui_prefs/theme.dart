import 'package:flutter/material.dart';

ThemeData myTheme(BuildContext context) =>
    ThemeData(
      primaryColor: Colors.purple,
      colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
      fontFamily: 'Quicksand',
      textTheme: ThemeData
          .light()
          .textTheme
          .copyWith(
          caption: const TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            overflow: TextOverflow.ellipsis,
          )),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme
                .of(context)
                .colorScheme
                .onPrimary),
      ),
    );