import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String name;
  DetailsPage({Key? key, required this.name}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(widget.name),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
