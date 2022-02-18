import 'package:fitnes/core/constants/const.dart';
import 'package:fitnes/widgets/scaffold_massenger.dart';
import 'package:flutter/material.dart';

class MyContainer {
  static Container wContainerButton(
    String text1,
    String text2,
    String imgText,
    BuildContext context, {
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
}
