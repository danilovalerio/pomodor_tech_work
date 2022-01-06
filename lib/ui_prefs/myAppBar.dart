import 'package:flutter/material.dart';
import 'package:pomodor_tech_work/utils/reponsive_items.dart';

AppBar myAppBarMain(BuildContext context) => AppBar(
      title: Text(
        'Pomodoro Tech',
        style:
            TextStyle(fontSize: fontSizeReponsive(context: context, size: 20)),
      ),
      centerTitle: true,
      actions: <Widget>[
        // if (isLandscape)
        IconButton(
          onPressed: () {
            // setState(() {
            //   _showChart = !_showChart;
            // });
          },
          icon: Icon(true ? Icons.list : Icons.pie_chart),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
      ],
      backgroundColor: Theme.of(context).primaryColor,
    );
