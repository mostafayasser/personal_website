import 'dart:html';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Experience",
                      text: "1.5 Years",
                    ),
                    AreaInfoText(
                      title: "Published apps",
                      text: "10",
                    ),
                    AreaInfoText(
                      title: "Education",
                      text: "BSc Computer Science",
                    ),
                    AreaInfoText(
                      title: "Grade",
                      text: "A",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () => _downloadCV(),
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () => _launchURL(
                                "https://www.linkedin.com/in/mostafa-yasser/"),
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () =>
                                _launchURL("https://github.com/mostafayasser"),
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _downloadCV() {
  AnchorElement element =
      new AnchorElement(href: "assets/Mostafa-Yasser-CV-Flutter.pdf");
  element.download = "Mostafa-Yasser-Flutter-CV";
  element.click();
}

void _launchURL(url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
