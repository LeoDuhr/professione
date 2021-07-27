import 'dart:html';

import 'package:flutter/material.dart';
import 'package:professione/constant/style.dart';
import 'package:professione/helpers/reponsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState.openDrawer();
              }),
      title: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: PortFolioWhite,
          width: 0.5,
        )),
        child: IntrinsicHeight(
          child: Expanded(
            child: Row(
              children: [
                Visibility(
                    visible: !ResponsiveWidget.isSmallScreen(context),
                    child: CustomText(
                      text: "AP Engineering",
                      color: PortFolioWhite,
                      size: 20,
                      weight: FontWeight.bold,
                    )),
                Expanded(child: Container()),
                Spacer(
                  flex: 20,
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: PortFolioWhite,
                      width: 0.5,
                    )),
                    child: TextButton(
                      child: CustomText(
                        text: "Home",
                        color: PortFolioWhite,
                        size: 16,
                        weight: FontWeight.bold,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),

                TextButton(
                  child: CustomText(
                    text: "Storia",
                    color: PortFolioWhite,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                  onPressed: () {},
                ),
                Spacer(
                  flex: 1,
                ),
                TextButton(
                  child: CustomText(
                    text: "Meccanica",
                    color: PortFolioWhite,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                  onPressed: () {},
                ),
                Spacer(
                  flex: 1,
                ),
                TextButton(
                  child: CustomText(
                    text: "Elettrotecnica",
                    color: PortFolioWhite,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                  onPressed: () {},
                ),
                Spacer(
                  flex: 1,
                ),
                TextButton(
                  child: CustomText(
                    text: "Software",
                    color: PortFolioWhite,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                  onPressed: () {},
                ),
                Spacer(
                  flex: 1,
                ),
                TextButton(
                  child: CustomText(
                    text: "Consulenza",
                    color: PortFolioWhite,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                  onPressed: () {},
                ),
                Spacer(
                  flex: 1,
                ),
                TextButton(
                  child: CustomText(
                    text: "Contattaci",
                    color: PortFolioWhite,
                    size: 16,
                    weight: FontWeight.bold,
                  ),
                  onPressed: () {},
                )
//            Stack(
//              children: [
//                IconButton(
//                    icon: Icon(
//                      Icons.notifications,
//                      color: dark.withOpacity(.7),
//                    ),
//                    onPressed: () {}),
//                Positioned(
//                  top: 7,
//                  right: 7,
//                  child: Container(
//                    width: 12,
//                    height: 12,
//                    padding: EdgeInsets.all(4),
//                    decoration: BoxDecoration(
//                        color: active,
//                        borderRadius: BorderRadius.circular(30),
//                        border: Border.all(color: light, width: 2)),
//                  ),
//                )
//              ],
//            ),
//            Container(
//              width: 1,
//              height: 22,
//              color: lightGrey,
//            ),
//            SizedBox(
//              width: 24,
//            ),
//            CustomText(
//              text: "Santos Enoque",
//              color: lightGrey,
//            ),
//            SizedBox(
//              width: 16,
//            ),
//            Container(
//              decoration: BoxDecoration(
//                  color: active.withOpacity(.5),
//                  borderRadius: BorderRadius.circular(30)),
//              child: Container(
//                decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.circular(30)),
//                padding: EdgeInsets.all(2),
//                margin: EdgeInsets.all(2),
//                child: CircleAvatar(
//                  backgroundColor: light,
//                  child: Icon(
//                    Icons.person_outline,
//                    color: dark,
//                  ),
//                ),
//              ),
//            )
              ],
            ),
          ),
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
