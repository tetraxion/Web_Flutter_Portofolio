import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';
import 'package:portofolio/screen/main/component/download_cv.dart';
import 'package:portofolio/screen/main/component/skill_menu.dart';
import 'package:portofolio/screen/main/component/social_media.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SkillMenu(
            image1: 'images/Dart.png',
            text1: 'Dart',
            image2: 'images/flutter.png',
            text2: 'Flutter',
            image3: 'images/python.png',
            text3: 'Python',
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SkillMenu(
            image1: 'images/htmlcssjs.png',
            text1: 'HTML, CSS, JS',
            image2: 'images/php.png',
            text2: 'PHP',
            image3: 'images/laravel.png',
            text3: 'Laravel',
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SkillMenu(
            image1: 'images/mysql.png',
            text1: 'Mysql',
            image2: 'images/firebase.png',
            text2: 'Firebase',
            image3: 'images/git.png',
            text3: 'Git',
          ),
          SizedBox(height: defaultPadding),
          Divider(),
          SizedBox(height: defaultPadding),
          DownloadCV(),
          SocialMedia(),
        ],
      ),
    ));
  }
}
