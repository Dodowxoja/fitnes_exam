import 'package:fitnes/core/constants/const.dart';
import 'package:fitnes/widgets/scaffold_massenger.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String name1;

  DetailsPage({
    Key? key,
    required this.name1,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                ListTile(
                  title: Text(widget.name1),
                  subtitle: MyText.text(TextConst.dText0),
                  trailing: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        ColorConst.kPColor1.withOpacity(0.2),
                        ColorConst.kPColor2.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.calendar_today_rounded),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(TextConst.dText1),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyText.text(TextConst.dText2),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(Icons.chevron_right_outlined),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.purpleAccent.shade100.withOpacity(0.2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.wifi_protected_setup_outlined),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(TextConst.dText3),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyText.text(TextConst.dText4),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(Icons.chevron_right_outlined),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
