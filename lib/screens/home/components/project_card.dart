import 'package:flutter/material.dart';
import 'package:mostafa_yasser/models/Project.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 9,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                project.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              project.description!,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () => _launchURL(project.iosLink),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: primaryColor),
                    ),
                    child: Text(
                      "iOS version",
                      style: TextStyle(color: Colors.white),
                    )),
                OutlinedButton(
                    onPressed: () => _launchURL(project.androidLink),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: primaryColor),
                    ),
                    child: Text(
                      "Android version",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

void _launchURL(url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
