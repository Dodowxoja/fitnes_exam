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
                  wCard(
                    'assets/images/home/wp1.png',
                    TextConst.wTextR4,
                    TextConst.wText5,
                    sTitle1,
                  ),
                  //4
                  wCard(
                    'assets/images/home/wp2.png',
                    TextConst.wText6,
                    TextConst.wText7,
                    sTitle2,
                    tSize: 15,
                    bSize: 30,
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
                  wContainerButton(
                    TextConst.wTextR4,
                    TextConst.wText10,
                    'assets/images/home/Vector1.png',
                    imgLSize: 10,
                    bSize: 15,
                  ),
                  wContainerButton(
                    TextConst.wText11,
                    TextConst.wText12,
                    'assets/images/home/Vector2.png',
                    imgLSize: 10,
                    bSize: 15,
                  ),
                  wContainerButton(
                    TextConst.wText13,
                    TextConst.wText14,
                    'assets/images/home/Vector3.png',
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

  Container wContainerButton(
    String text1,
    String text2,
    String imgText, {
    double bSize = 0,
    double imgLSize = 0,
    double imgRSize = 0,
    double imgTSize = 0,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: bSize),
      height: 132,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            ColorConst.kPColor1.withOpacity(0.2),
            ColorConst.kPColor2.withOpacity(0.2),
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: MyText.text(text1),
                  subtitle: MyText.text(text2),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 18),
                  height: 35,
                  width: 94,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(primary: ColorConst.kPColor1),
                    child: MyText.text(TextConst.wTextR0,
                        color: ColorConst.kPColor1),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/details',
                        arguments: text1,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 46,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: imgLSize, right: imgRSize, top: imgTSize),
                    child: Image(
                      image: AssetImage(imgText),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  wCard(
    String img,
    String text1,
    String text2,
    bool state, {
    double tSize = 0,
    double bSize = 0,
    double lSize = 0,
    double rSize = 0,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(
        left: lSize,
        right: rSize,
        top: tSize,
        bottom: bSize,
      ),
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
            onChanged: (v) => setState(() => state = !state),
            value: state,
          ),
        ),
      ),
    );
  }
}
