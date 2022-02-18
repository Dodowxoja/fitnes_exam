import 'package:fitnes/core/constants/const.dart';
import 'package:fitnes/widgets/scaffold_massenger.dart';
import 'package:flutter/material.dart';

constants
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
            wCard(
              'assets/images/home/wp1.png',
              TextConst.wTextR4,
              TextConst.wText5,
              '1',
              lSize: 30,
              rSize: 30,
            ),
            //4
            wCard(
              'assets/images/home/wp2.png',
              TextConst.wText6,
              TextConst.wText7,
              '2',
              lSize: 30,
              rSize: 30,
              tSize: 15,
              bSize: 15,
            ),
            //5
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 30, right: 30),
              child: Row(
                children: [MyText.text(TextConst.wText8)],
              ),
            )
          ],
        ),
      ),
    );
  }

  wCard(
    String img,
    String text1,
    String text2,
    String _radioValue, {
    double tSize = 0,
    double bSize = 0,
    double lSize = 0,
    double rSize = 0,
    bool offOn = false,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin:
          EdgeInsets.only(left: lSize, right: rSize, top: tSize, bottom: bSize),
      child: Container(
        height: 80,
        alignment: Alignment.center,
        child: ListTile(
          leading: CircleAvatar(
            radius: 50,
            child: Image(
              image: AssetImage(img),
              fit: BoxFit.contain,
            ),
          ),
          title: MyText.text(text1, size: 12, fWeight: FontWeight.w500),
          subtitle: MyText.text(text2, size: 10),
          trailing: Switch(
            activeTrackColor: ColorConst.kPSwitchColor1,
            thumbColor: MaterialStateColor.resolveWith(
              (states) => Colors.white,
            ),
            value: offOn,
            onChanged: (v) => setState(() => offOn = !offOn),
          ),
        ),
      ),
    );
  }
}
