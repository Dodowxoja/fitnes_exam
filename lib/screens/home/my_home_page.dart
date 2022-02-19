import 'package:fitnes/core/components/container.dart';
import 'package:fitnes/core/constants/const.dart';
import 'package:fitnes/widgets/scaffold_massenger.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool sTitle1 = true;
  bool sTitle2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
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
                          child: MyText.text('Check',
                              color: Colors.white, size: 12),
                        ),
                      ],
                    ),
                  ),
                  // 2
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 15),
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

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    margin: const EdgeInsets.only(),
                    child: Container(
                      height: 80,
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: MyHomeAva.ava('assets/images/home/wp1.png'),
                        title: MyText.text(TextConst.wTextR4,
                            size: 12, fWeight: FontWeight.w500),
                        subtitle: MyText.text(TextConst.wText5, size: 10),
                        trailing: Switch(
                          activeTrackColor: ColorConst.kPSwitchColor1,
                          thumbColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white,
                          ),
                          onChanged: (v) => setState(() => sTitle1 = !sTitle1),
                          value: sTitle1,
                        ),
                      ),
                    ),
                  ),
                  //4
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: const EdgeInsets.only(top: 15, bottom: 30),
                    child: Container(
                      height: 80,
                      alignment: Alignment.center,
                      child: ListTile(
                        leading: MyHomeAva.ava('assets/images/home/wp2.png'),
                        title: MyText.text(TextConst.wText6,
                            size: 12, fWeight: FontWeight.w500),
                        subtitle: MyText.text(TextConst.wText7, size: 10),
                        trailing: Switch(
                          activeTrackColor: ColorConst.kPSwitchColor1,
                          thumbColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white,
                          ),
                          onChanged: (v) => setState(() => sTitle2 = !sTitle2),
                          value: sTitle2,
                        ),
                      ),
                    ),
                  ),

                  //5
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: Row(
                      children: [
                        MyText.text(
                          TextConst.wText8,
                          fWeight: FontWeight.w600,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                  MyContainer.wContainerButton(
                    TextConst.wTextR4,
                    TextConst.wText10,
                    'assets/images/home/Vector1.png',
                    context,
                    imgLSize: 10,
                    bSize: 15,
                  ),
                  MyContainer.wContainerButton(
                    TextConst.wText11,
                    TextConst.wText12,
                    'assets/images/home/Vector2.png',
                    context,
                    imgLSize: 10,
                    bSize: 15,
                  ),
                  MyContainer.wContainerButton(
                    TextConst.wText13,
                    TextConst.wText14,
                    'assets/images/home/Vector3.png',
                    context,
                    imgTSize: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
