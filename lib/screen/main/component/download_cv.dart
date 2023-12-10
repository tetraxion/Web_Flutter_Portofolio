import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portofolio/constaint.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _launchDownloadUrl(); // Call the function to initiate the download
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "DOWNLOAD CV",
              style: Theme.of(context).textTheme.bodyText1!,
            ),
            SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/download.svg"),
          ],
        ),
      ),
    );
  }

  // Function to launch the download URL
  _launchDownloadUrl() async {
    const downloadUrl = "https://drive.google.com/file/d/1f3L_tLoSwdZKYvANKQVFP8TdEA4JgKh0/view?usp=sharing"; // Replace with your actual CV URL

    if (await canLaunch(downloadUrl)) {
      await launch(downloadUrl);
    } else {
      throw 'Could not launch $downloadUrl';
    }
  }
}
