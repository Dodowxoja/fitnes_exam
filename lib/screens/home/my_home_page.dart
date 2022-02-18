import 'package:fitnes/core/constants/const.dart';
import 'package:fitnes/widgets/scaffold_massenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 1
            Container(
              height: 57,
              width: 315,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    ColorConst.kPColor1.withOpacity(0.2),
                    ColorConst.kPColor2.withOpacity(0.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyText.text(TextConst.wText1, fWeight: FontWeight.w500),
                  Container(
                    height: 28,
                    width: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [
                          ColorConst.kPColor1,
                          ColorConst.kPColor2,
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                    child: MyText.text('Check', color: Colors.white, size: 12),
                  ),
                ],
              ),
            ),
            // 2
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.text(
                    TextConst.wText2,
                    size: 16,
                    fWeight: FontWeight.w600,
                  ),
                  MyText.text(
                    TextConst.wText3,
                    size: 12,
                    color: ColorConst.kPTextColor1,
                  ),
                ],
              ),
            ),
            // 3
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/home/wp1.png',
                  ),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/home/wp1.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
